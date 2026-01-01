-- Verification Queries for Crime Data Import
-- Run these after importing crime data to verify everything worked correctly

\echo '=== Crime Data Import Verification ===\n'

-- 1. Total crimes imported
\echo '1. Total crimes imported:'
SELECT COUNT(*) as total_crimes FROM crimes;

-- 2. Crimes by type
\echo '\n2. Crimes by type:'
SELECT 
  crime_type,
  COUNT(*) as count,
  ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM crimes), 2) as percentage
FROM crimes
GROUP BY crime_type
ORDER BY count DESC;

-- 3. Crimes by severity
\echo '\n3. Crimes by severity:'
SELECT 
  severity,
  COUNT(*) as count
FROM crimes
GROUP BY severity
ORDER BY 
  CASE severity
    WHEN 'critical' THEN 1
    WHEN 'high' THEN 2
    WHEN 'medium' THEN 3
    WHEN 'low' THEN 4
  END;

-- 4. Crimes by category
\echo '\n4. Top 10 crime categories:'
SELECT 
  category,
  COUNT(*) as count
FROM crimes
GROUP BY category
ORDER BY count DESC
LIMIT 10;

-- 5. Crimes linked to places
\echo '\n5. Crimes linked to places:'
SELECT 
  COUNT(*) FILTER (WHERE place_id IS NOT NULL) as linked_crimes,
  COUNT(*) FILTER (WHERE place_id IS NULL) as unlinked_crimes,
  COUNT(*) as total_crimes,
  ROUND(COUNT(*) FILTER (WHERE place_id IS NOT NULL) * 100.0 / COUNT(*), 2) as link_percentage
FROM crimes;

-- 6. Places with most crimes
\echo '\n6. Top 15 places by crime count:'
SELECT 
  p.name,
  p.locality,
  p.safety_score,
  COUNT(c.id) as crime_count,
  COUNT(*) FILTER (WHERE c.crime_type = 'violent') as violent_count,
  COUNT(*) FILTER (WHERE c.crime_type = 'property') as property_count
FROM places p
LEFT JOIN crimes c ON c.place_id = p.id
WHERE c.id IS NOT NULL
GROUP BY p.id, p.name, p.locality, p.safety_score
ORDER BY crime_count DESC
LIMIT 15;

-- 7. Safety attributes updated
\echo '\n7. Safety attributes with crime data:'
SELECT 
  COUNT(*) as total_attributes,
  COUNT(*) FILTER (WHERE data_source = 'crime_aggregation') as from_crimes,
  AVG(violent_crime) as avg_violent_crime,
  AVG(property_crime) as avg_property_crime,
  AVG(accident_rate) as avg_accident_rate
FROM place_safety_attributes
WHERE data_source = 'crime_aggregation';

-- 8. Places with updated safety scores
\echo '\n8. Places with safety scores (top 20):'
SELECT 
  name,
  locality,
  safety_score,
  elo_score,
  trend_score
FROM places
WHERE safety_score IS NOT NULL
ORDER BY safety_score DESC
LIMIT 20;

-- 9. Crime timeline (last 12 months)
\echo '\n9. Crimes in last 12 months by month:'
SELECT 
  DATE_TRUNC('month', incident_date)::DATE as month,
  COUNT(*) as crime_count,
  COUNT(*) FILTER (WHERE crime_type = 'violent') as violent,
  COUNT(*) FILTER (WHERE crime_type = 'property') as property,
  COUNT(*) FILTER (WHERE crime_type = 'cyber') as cyber
FROM crimes
WHERE incident_date >= CURRENT_DATE - INTERVAL '12 months'
GROUP BY DATE_TRUNC('month', incident_date)
ORDER BY month DESC;

-- 10. Historical data created
\echo '\n10. Historical safety records:'
SELECT 
  COUNT(*) as total_records,
  COUNT(DISTINCT place_id) as places_with_history,
  MIN(month) as earliest_month,
  MAX(month) as latest_month
FROM place_safety_history;

-- 11. Trend analysis
\echo '\n11. Places by trend direction:'
SELECT 
  trend_direction,
  COUNT(*) as place_count
FROM (
  SELECT DISTINCT ON (place_id)
    place_id,
    trend_direction
  FROM place_safety_history
  ORDER BY place_id, month DESC
) recent_trends
GROUP BY trend_direction;

\echo '\n=== Verification Complete ==='

