-- Aggregate Crime Data to Update Place Safety Attributes
-- Run this after link_crimes_to_places.sql

-- Function to calculate crime metrics for a place
CREATE OR REPLACE FUNCTION calculate_crime_metrics(p_place_id UUID)
RETURNS TABLE(
  violent_crime FLOAT,
  property_crime FLOAT,
  accident_rate FLOAT,
  total_incidents INT
) AS $$
DECLARE
  v_violent_count INT;
  v_property_count INT;
  v_cyber_count INT;
  v_other_count INT;
  v_total INT;
  v_months FLOAT;
BEGIN
  -- Count crimes by type in last 12 months
  SELECT 
    COUNT(*) FILTER (WHERE crime_type = 'violent'),
    COUNT(*) FILTER (WHERE crime_type = 'property'),
    COUNT(*) FILTER (WHERE crime_type = 'cyber'),
    COUNT(*) FILTER (WHERE crime_type = 'other'),
    COUNT(*)
  INTO v_violent_count, v_property_count, v_cyber_count, v_other_count, v_total
  FROM crimes
  WHERE place_id = p_place_id
    AND incident_date >= CURRENT_DATE - INTERVAL '12 months';
  
  -- Calculate months covered (for normalization)
  SELECT EXTRACT(EPOCH FROM (CURRENT_DATE - MIN(incident_date))) / 2592000.0
  INTO v_months
  FROM crimes
  WHERE place_id = p_place_id
    AND incident_date >= CURRENT_DATE - INTERVAL '12 months';
  
  IF v_months < 1 THEN
    v_months := 12.0; -- Default to 12 months if less than 1 month
  END IF;
  
  -- Normalize to per-month rates, then scale to 0-100
  -- Higher values = more crime = worse safety
  RETURN QUERY SELECT
    LEAST(100.0, (v_violent_count / v_months) * 10.0)::FLOAT as violent_crime,
    LEAST(100.0, (v_property_count / v_months) * 5.0)::FLOAT as property_crime,
    LEAST(100.0, (v_other_count / v_months) * 3.0)::FLOAT as accident_rate,
    v_total::INT as total_incidents;
END;
$$ LANGUAGE plpgsql;

-- Update place_safety_attributes with aggregated crime data
INSERT INTO place_safety_attributes (
  place_id,
  violent_crime,
  property_crime,
  accident_rate,
  data_timestamp,
  data_source,
  confidence_score
)
SELECT 
  p.id,
  m.violent_crime,
  m.property_crime,
  m.accident_rate,
  NOW() as data_timestamp,
  'crime_aggregation' as data_source,
  CASE 
    WHEN m.total_incidents > 10 THEN 0.9
    WHEN m.total_incidents > 5 THEN 0.7
    WHEN m.total_incidents > 0 THEN 0.5
    ELSE 0.3
  END as confidence_score
FROM places p
CROSS JOIN LATERAL calculate_crime_metrics(p.id) m
WHERE m.total_incidents > 0
ON CONFLICT (place_id, data_timestamp) 
DO UPDATE SET
  violent_crime = EXCLUDED.violent_crime,
  property_crime = EXCLUDED.property_crime,
  accident_rate = EXCLUDED.accident_rate,
  confidence_score = EXCLUDED.confidence_score,
  updated_at = NOW();

-- Update latest safety attributes for each place
UPDATE place_safety_attributes psa
SET 
  violent_crime = latest.violent_crime,
  property_crime = latest.property_crime,
  accident_rate = latest.accident_rate,
  confidence_score = latest.confidence_score,
  updated_at = NOW()
FROM (
  SELECT DISTINCT ON (place_id)
    place_id,
    violent_crime,
    property_crime,
    accident_rate,
    confidence_score
  FROM place_safety_attributes
  WHERE data_source = 'crime_aggregation'
  ORDER BY place_id, data_timestamp DESC
) latest
WHERE psa.place_id = latest.place_id
  AND psa.data_timestamp = (
    SELECT MAX(data_timestamp) 
    FROM place_safety_attributes 
    WHERE place_id = psa.place_id
  );

-- Update place safety scores based on crime data
UPDATE places p
SET 
  safety_score = GREATEST(0, LEAST(100, 
    100 - (
      COALESCE(psa.violent_crime, 0) * 0.4 +
      COALESCE(psa.property_crime, 0) * 0.3 +
      COALESCE(psa.accident_rate, 0) * 0.2 +
      (100 - COALESCE(psa.safety_infra, 50)) * 0.1
    )
  )),
  last_score_update = NOW()
FROM (
  SELECT DISTINCT ON (place_id)
    place_id,
    violent_crime,
    property_crime,
    accident_rate,
    safety_infra
  FROM place_safety_attributes
  ORDER BY place_id, data_timestamp DESC
) psa
WHERE p.id = psa.place_id;

-- Update place_safety_history with monthly aggregates
INSERT INTO place_safety_history (
  place_id,
  month,
  safety_score,
  crime_index,
  violent_incidents,
  property_incidents,
  accident_incidents,
  trend_direction
)
SELECT 
  p.id,
  date_trunc('month', c.incident_date)::DATE as month,
  p.safety_score,
  (COUNT(*) FILTER (WHERE c.crime_type IN ('violent', 'property')) * 10.0) as crime_index,
  COUNT(*) FILTER (WHERE c.crime_type = 'violent')::INT as violent_incidents,
  COUNT(*) FILTER (WHERE c.crime_type = 'property')::INT as property_incidents,
  COUNT(*) FILTER (WHERE c.crime_type = 'other')::INT as accident_incidents,
  'stable' as trend_direction -- Will be calculated separately
FROM places p
JOIN crimes c ON c.place_id = p.id
WHERE c.incident_date >= CURRENT_DATE - INTERVAL '24 months'
GROUP BY p.id, date_trunc('month', c.incident_date), p.safety_score
ON CONFLICT (place_id, month) 
DO UPDATE SET
  safety_score = EXCLUDED.safety_score,
  crime_index = EXCLUDED.crime_index,
  violent_incidents = EXCLUDED.violent_incidents,
  property_incidents = EXCLUDED.property_incidents,
  accident_incidents = EXCLUDED.accident_incidents;

-- Calculate trend directions
UPDATE place_safety_history h
SET trend_direction = CASE
  WHEN h.safety_score > prev.safety_score + 5 THEN 'improving'
  WHEN h.safety_score < prev.safety_score - 5 THEN 'declining'
  ELSE 'stable'
END
FROM (
  SELECT 
    place_id,
    month,
    safety_score,
    LAG(safety_score) OVER (PARTITION BY place_id ORDER BY month) as prev_score
  FROM place_safety_history
) prev
WHERE h.place_id = prev.place_id
  AND h.month = prev.month
  AND prev.prev_score IS NOT NULL;

-- Update places trend_score based on recent history
UPDATE places p
SET trend_score = CASE
  WHEN recent_trend.avg_trend > 0.3 THEN 0.5
  WHEN recent_trend.avg_trend > 0.1 THEN 0.2
  WHEN recent_trend.avg_trend < -0.3 THEN -0.5
  WHEN recent_trend.avg_trend < -0.1 THEN -0.2
  ELSE 0.0
END
FROM (
  SELECT 
    place_id,
    AVG(CASE 
      WHEN trend_direction = 'improving' THEN 1.0
      WHEN trend_direction = 'declining' THEN -1.0
      ELSE 0.0
    END) as avg_trend
  FROM place_safety_history
  WHERE month >= CURRENT_DATE - INTERVAL '6 months'
  GROUP BY place_id
) recent_trend
WHERE p.id = recent_trend.place_id;

