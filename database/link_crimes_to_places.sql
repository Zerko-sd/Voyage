-- Link Crimes to Places and Aggregate Data
-- Run this after crimes_insert.sql

-- Function to find nearest place within 2km radius
CREATE OR REPLACE FUNCTION find_nearest_place(crime_lat FLOAT, crime_lng FLOAT)
RETURNS UUID AS $$
DECLARE
  nearest_place_id UUID;
  min_distance FLOAT;
BEGIN
  SELECT 
    id,
    earth_distance(crime_lat, crime_lng, lat, lng) as distance
  INTO nearest_place_id, min_distance
  FROM places
  WHERE earth_distance(crime_lat, crime_lng, lat, lng) <= 2.0 -- 2km radius
  ORDER BY earth_distance(crime_lat, crime_lng, lat, lng)
  LIMIT 1;
  
  RETURN nearest_place_id;
END;
$$ LANGUAGE plpgsql;

-- Update crimes with place_id based on proximity
UPDATE crimes c
SET place_id = find_nearest_place(c.lat, c.lng)
WHERE place_id IS NULL
  AND lat IS NOT NULL 
  AND lng IS NOT NULL;

-- Create or update places from unique crime localities
INSERT INTO places (name, lat, lng, category, locality, district, region, country, safety_score)
SELECT DISTINCT ON (locality)
  COALESCE(locality, 'Unknown Location') as name,
  lat,
  lng,
  'area' as category,
  locality,
  'Chennai' as district,
  'Tamil Nadu' as region,
  'India' as country,
  50.0 as safety_score -- Default, will be updated by aggregation
FROM crimes
WHERE locality IS NOT NULL
  AND lat IS NOT NULL
  AND lng IS NOT NULL
  AND NOT EXISTS (
    SELECT 1 FROM places p 
    WHERE p.locality = crimes.locality 
    AND earth_distance(p.lat, p.lng, crimes.lat, crimes.lng) < 1.0
  )
ON CONFLICT (name, lat, lng) DO NOTHING;

-- Update place_id for crimes that now have matching places
UPDATE crimes c
SET place_id = p.id
FROM places p
WHERE c.locality = p.locality
  AND earth_distance(c.lat, c.lng, p.lat, p.lng) < 1.0
  AND c.place_id IS NULL;

