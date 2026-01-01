-- Import Crime Data from CSV
-- This script imports structured crime data
-- Run after add_crimes_table.sql

-- Chennai Locality Coordinates Mapping
-- These are approximate coordinates for Chennai localities mentioned in the crime data

-- First, let's create a helper function to get coordinates for localities
CREATE OR REPLACE FUNCTION get_locality_coords(locality_name TEXT)
RETURNS TABLE(lat FLOAT, lng FLOAT) AS $$
BEGIN
  RETURN QUERY
  SELECT 
    CASE 
      -- North Chennai
      WHEN locality_name ILIKE '%Royapuram%' THEN 13.1100::FLOAT
      WHEN locality_name ILIKE '%Tondiarpet%' THEN 13.1200::FLOAT
      WHEN locality_name ILIKE '%Washermanpet%' THEN 13.1050::FLOAT
      WHEN locality_name ILIKE '%Perambur%' THEN 13.1150::FLOAT
      WHEN locality_name ILIKE '%Vyasarpadi%' THEN 13.1080::FLOAT
      WHEN locality_name ILIKE '%Kolathur%' THEN 13.1000::FLOAT
      WHEN locality_name ILIKE '%Sowcarpet%' THEN 13.0900::FLOAT
      WHEN locality_name ILIKE '%Parry%' THEN 13.0850::FLOAT
      WHEN locality_name ILIKE '%Egmore%' THEN 13.0800::FLOAT
      WHEN locality_name ILIKE '%Central%' THEN 13.0827::FLOAT
      
      -- Central Chennai
      WHEN locality_name ILIKE '%T. Nagar%' OR locality_name ILIKE '%T Nagar%' THEN 13.0418::FLOAT
      WHEN locality_name ILIKE '%Nungambakkam%' THEN 13.0600::FLOAT
      WHEN locality_name ILIKE '%Mylapore%' THEN 13.0339::FLOAT
      WHEN locality_name ILIKE '%Triplicane%' THEN 13.0550::FLOAT
      WHEN locality_name ILIKE '%Adyar%' THEN 13.0067::FLOAT
      WHEN locality_name ILIKE '%Besant Nagar%' OR locality_name ILIKE '%Besant%' THEN 13.0030::FLOAT
      WHEN locality_name ILIKE '%Boat Club%' THEN 13.0100::FLOAT
      WHEN locality_name ILIKE '%Poes Garden%' THEN 13.0200::FLOAT
      WHEN locality_name ILIKE '%Alwarpet%' THEN 13.0300::FLOAT
      WHEN locality_name ILIKE '%Royapettah%' THEN 13.0400::FLOAT
      WHEN locality_name ILIKE '%Chetpet%' THEN 13.0700::FLOAT
      WHEN locality_name ILIKE '%Kilpauk%' THEN 13.0750::FLOAT
      WHEN locality_name ILIKE '%Aminjikarai%' THEN 13.0650::FLOAT
      WHEN locality_name ILIKE '%Choolaimedu%' THEN 13.0680::FLOAT
      WHEN locality_name ILIKE '%Anna Nagar%' THEN 13.0878::FLOAT
      WHEN locality_name ILIKE '%West Mambalam%' OR locality_name ILIKE '%Mambalam%' THEN 13.0350::FLOAT
      WHEN locality_name ILIKE '%Mandaveli%' THEN 13.0250::FLOAT
      WHEN locality_name ILIKE '%Kodambakkam%' THEN 13.0500::FLOAT
      WHEN locality_name ILIKE '%Villivakkam%' THEN 13.1100::FLOAT
      WHEN locality_name ILIKE '%Pallavaram%' THEN 12.9700::FLOAT
      
      -- South Chennai
      WHEN locality_name ILIKE '%Velachery%' THEN 12.9810::FLOAT
      WHEN locality_name ILIKE '%Guindy%' THEN 12.9900::FLOAT
      WHEN locality_name ILIKE '%Tambaram%' THEN 12.9249::FLOAT
      WHEN locality_name ILIKE '%Chromepet%' THEN 12.9500::FLOAT
      WHEN locality_name ILIKE '%Pallikaranai%' THEN 12.9400::FLOAT
      WHEN locality_name ILIKE '%Medavakkam%' THEN 12.9200::FLOAT
      WHEN locality_name ILIKE '%Perumbakkam%' THEN 12.9100::FLOAT
      WHEN locality_name ILIKE '%Sholinganallur%' THEN 12.9000::FLOAT
      WHEN locality_name ILIKE '%Thoraipakkam%' OR locality_name ILIKE '%OMR%' THEN 12.9141::FLOAT
      WHEN locality_name ILIKE '%Siruseri%' THEN 12.8800::FLOAT
      WHEN locality_name ILIKE '%ECR%' THEN 12.8500::FLOAT
      WHEN locality_name ILIKE '%Perungudi%' THEN 12.9600::FLOAT
      WHEN locality_name ILIKE '%Alandur%' THEN 12.9800::FLOAT
      WHEN locality_name ILIKE '%Mudichur%' THEN 12.9300::FLOAT
      WHEN locality_name ILIKE '%Guduvanchery%' THEN 12.8700::FLOAT
      
      -- West Chennai
      WHEN locality_name ILIKE '%Porur%' THEN 13.0350::FLOAT
      WHEN locality_name ILIKE '%Virugambakkam%' THEN 13.0550::FLOAT
      WHEN locality_name ILIKE '%Korattur%' THEN 13.1050::FLOAT
      WHEN locality_name ILIKE '%Ambattur%' THEN 13.0950::FLOAT
      WHEN locality_name ILIKE '%Avadi%' THEN 13.1150::FLOAT
      WHEN locality_name ILIKE '%Red Hills%' THEN 13.1300::FLOAT
      WHEN locality_name ILIKE '%Madhavaram%' THEN 13.1250::FLOAT
      WHEN locality_name ILIKE '%Manali%' THEN 13.1400::FLOAT
      WHEN locality_name ILIKE '%Poonamallee%' THEN 13.0500::FLOAT
      WHEN locality_name ILIKE '%Valasaravakkam%' THEN 13.0400::FLOAT
      
      -- Other areas
      WHEN locality_name ILIKE '%Marina%' THEN 13.0499::FLOAT
      WHEN locality_name ILIKE '%Phoenix%' THEN 13.0109::FLOAT
      WHEN locality_name ILIKE '%Kasimedu%' THEN 13.1200::FLOAT
      WHEN locality_name ILIKE '%Purasawalkam%' THEN 13.0900::FLOAT
      WHEN locality_name ILIKE '%Mogappair%' THEN 13.0800::FLOAT
      WHEN locality_name ILIKE '%Saidapet%' THEN 13.0200::FLOAT
      WHEN locality_name ILIKE '%Adambakkam%' THEN 12.9700::FLOAT
      WHEN locality_name ILIKE '%Madipakkam%' THEN 12.9600::FLOAT
      WHEN locality_name ILIKE '%Tondiarpet%' THEN 13.1200::FLOAT
      WHEN locality_name ILIKE '%Otteri%' THEN 13.1000::FLOAT
      WHEN locality_name ILIKE '%Ashok Nagar%' THEN 13.0450::FLOAT
      WHEN locality_name ILIKE '%Vadapalani%' THEN 13.0520::FLOAT
      WHEN locality_name ILIKE '%Thousand Lights%' THEN 13.0600::FLOAT
      
      ELSE 13.0827::FLOAT -- Default to Chennai center
    END as lat,
    CASE 
      -- North Chennai
      WHEN locality_name ILIKE '%Royapuram%' THEN 80.2900::FLOAT
      WHEN locality_name ILIKE '%Tondiarpet%' THEN 80.3000::FLOAT
      WHEN locality_name ILIKE '%Washermanpet%' THEN 80.2850::FLOAT
      WHEN locality_name ILIKE '%Perambur%' THEN 80.2400::FLOAT
      WHEN locality_name ILIKE '%Vyasarpadi%' THEN 80.2500::FLOAT
      WHEN locality_name ILIKE '%Kolathur%' THEN 80.2300::FLOAT
      WHEN locality_name ILIKE '%Sowcarpet%' THEN 80.2800::FLOAT
      WHEN locality_name ILIKE '%Parry%' THEN 80.2750::FLOAT
      WHEN locality_name ILIKE '%Egmore%' THEN 80.2600::FLOAT
      WHEN locality_name ILIKE '%Central%' THEN 80.2707::FLOAT
      
      -- Central Chennai
      WHEN locality_name ILIKE '%T. Nagar%' OR locality_name ILIKE '%T Nagar%' THEN 80.2341::FLOAT
      WHEN locality_name ILIKE '%Nungambakkam%' THEN 80.2400::FLOAT
      WHEN locality_name ILIKE '%Mylapore%' THEN 80.2676::FLOAT
      WHEN locality_name ILIKE '%Triplicane%' THEN 80.2700::FLOAT
      WHEN locality_name ILIKE '%Adyar%' THEN 80.2600::FLOAT
      WHEN locality_name ILIKE '%Besant Nagar%' OR locality_name ILIKE '%Besant%' THEN 80.2650::FLOAT
      WHEN locality_name ILIKE '%Boat Club%' THEN 80.2700::FLOAT
      WHEN locality_name ILIKE '%Poes Garden%' THEN 80.2500::FLOAT
      WHEN locality_name ILIKE '%Alwarpet%' THEN 80.2550::FLOAT
      WHEN locality_name ILIKE '%Royapettah%' THEN 80.2600::FLOAT
      WHEN locality_name ILIKE '%Chetpet%' THEN 80.2450::FLOAT
      WHEN locality_name ILIKE '%Kilpauk%' THEN 80.2400::FLOAT
      WHEN locality_name ILIKE '%Aminjikarai%' THEN 80.2350::FLOAT
      WHEN locality_name ILIKE '%Choolaimedu%' THEN 80.2380::FLOAT
      WHEN locality_name ILIKE '%Anna Nagar%' THEN 80.2088::FLOAT
      WHEN locality_name ILIKE '%West Mambalam%' OR locality_name ILIKE '%Mambalam%' THEN 80.2300::FLOAT
      WHEN locality_name ILIKE '%Mandaveli%' THEN 80.2650::FLOAT
      WHEN locality_name ILIKE '%Kodambakkam%' THEN 80.2200::FLOAT
      WHEN locality_name ILIKE '%Villivakkam%' THEN 80.2000::FLOAT
      WHEN locality_name ILIKE '%Pallavaram%' THEN 80.1500::FLOAT
      
      -- South Chennai
      WHEN locality_name ILIKE '%Velachery%' THEN 80.2209::FLOAT
      WHEN locality_name ILIKE '%Guindy%' THEN 80.2200::FLOAT
      WHEN locality_name ILIKE '%Tambaram%' THEN 80.1000::FLOAT
      WHEN locality_name ILIKE '%Chromepet%' THEN 80.1400::FLOAT
      WHEN locality_name ILIKE '%Pallikaranai%' THEN 80.2000::FLOAT
      WHEN locality_name ILIKE '%Medavakkam%' THEN 80.1800::FLOAT
      WHEN locality_name ILIKE '%Perumbakkam%' THEN 80.1900::FLOAT
      WHEN locality_name ILIKE '%Sholinganallur%' THEN 80.2200::FLOAT
      WHEN locality_name ILIKE '%Thoraipakkam%' OR locality_name ILIKE '%OMR%' THEN 80.2270::FLOAT
      WHEN locality_name ILIKE '%Siruseri%' THEN 80.2000::FLOAT
      WHEN locality_name ILIKE '%ECR%' THEN 80.2500::FLOAT
      WHEN locality_name ILIKE '%Perungudi%' THEN 80.2500::FLOAT
      WHEN locality_name ILIKE '%Alandur%' THEN 80.2000::FLOAT
      WHEN locality_name ILIKE '%Mudichur%' THEN 80.1500::FLOAT
      WHEN locality_name ILIKE '%Guduvanchery%' THEN 80.1000::FLOAT
      
      -- West Chennai
      WHEN locality_name ILIKE '%Porur%' THEN 80.1500::FLOAT
      WHEN locality_name ILIKE '%Virugambakkam%' THEN 80.1800::FLOAT
      WHEN locality_name ILIKE '%Korattur%' THEN 80.2000::FLOAT
      WHEN locality_name ILIKE '%Ambattur%' THEN 80.1900::FLOAT
      WHEN locality_name ILIKE '%Avadi%' THEN 80.1000::FLOAT
      WHEN locality_name ILIKE '%Red Hills%' THEN 80.2200::FLOAT
      WHEN locality_name ILIKE '%Madhavaram%' THEN 80.2100::FLOAT
      WHEN locality_name ILIKE '%Manali%' THEN 80.2500::FLOAT
      WHEN locality_name ILIKE '%Poonamallee%' THEN 80.1000::FLOAT
      WHEN locality_name ILIKE '%Valasaravakkam%' THEN 80.1600::FLOAT
      
      -- Other areas
      WHEN locality_name ILIKE '%Marina%' THEN 80.2824::FLOAT
      WHEN locality_name ILIKE '%Phoenix%' THEN 80.2290::FLOAT
      WHEN locality_name ILIKE '%Kasimedu%' THEN 80.3000::FLOAT
      WHEN locality_name ILIKE '%Purasawalkam%' THEN 80.2600::FLOAT
      WHEN locality_name ILIKE '%Mogappair%' THEN 80.1800::FLOAT
      WHEN locality_name ILIKE '%Saidapet%' THEN 80.2200::FLOAT
      WHEN locality_name ILIKE '%Adambakkam%' THEN 80.2000::FLOAT
      WHEN locality_name ILIKE '%Madipakkam%' THEN 80.1900::FLOAT
      WHEN locality_name ILIKE '%Otteri%' THEN 80.2500::FLOAT
      WHEN locality_name ILIKE '%Ashok Nagar%' THEN 80.2300::FLOAT
      WHEN locality_name ILIKE '%Vadapalani%' THEN 80.2200::FLOAT
      WHEN locality_name ILIKE '%Thousand Lights%' THEN 80.2500::FLOAT
      
      ELSE 80.2707::FLOAT -- Default to Chennai center
    END as lng;
END;
$$ LANGUAGE plpgsql IMMUTABLE;

-- Function to classify crime type
CREATE OR REPLACE FUNCTION classify_crime_type(category TEXT)
RETURNS TEXT AS $$
BEGIN
  RETURN CASE 
    WHEN category ILIKE '%Murder%' OR category ILIKE '%Assault%' OR category ILIKE '%Kidnapping%' 
         OR category ILIKE '%Domestic Violence%' THEN 'violent'
    WHEN category ILIKE '%Theft%' OR category ILIKE '%Burglary%' OR category ILIKE '%Robbery%' 
         OR category ILIKE '%Cheating%' THEN 'property'
    WHEN category ILIKE '%Cyber%' THEN 'cyber'
    ELSE 'other'
  END;
END;
$$ LANGUAGE plpgsql IMMUTABLE;

-- Function to determine severity
CREATE OR REPLACE FUNCTION determine_severity(category TEXT, ipc_sections TEXT)
RETURNS TEXT AS $$
BEGIN
  RETURN CASE 
    WHEN category ILIKE '%Murder%' OR ipc_sections LIKE '%302%' THEN 'critical'
    WHEN category ILIKE '%Assault%' OR category ILIKE '%Robbery%' OR ipc_sections LIKE '%307%' 
         OR ipc_sections LIKE '%397%' THEN 'high'
    WHEN category ILIKE '%Burglary%' OR category ILIKE '%Theft%' OR category ILIKE '%Cyber%' THEN 'medium'
    ELSE 'low'
  END;
END;
$$ LANGUAGE plpgsql IMMUTABLE;

-- Function to extract locality from description
CREATE OR REPLACE FUNCTION extract_locality(description TEXT)
RETURNS TEXT AS $$
DECLARE
  localities TEXT[] := ARRAY[
    'Royapuram', 'Tondiarpet', 'Washermanpet', 'Perambur', 'Vyasarpadi', 'Kolathur', 
    'Sowcarpet', 'Parry', 'Egmore', 'Central', 'T Nagar', 'Nungambakkam', 'Mylapore', 
    'Triplicane', 'Adyar', 'Besant Nagar', 'Boat Club', 'Poes Garden', 'Alwarpet', 
    'Royapettah', 'Chetpet', 'Kilpauk', 'Aminjikarai', 'Choolaimedu', 'Anna Nagar', 
    'West Mambalam', 'Mambalam', 'Mandaveli', 'Kodambakkam', 'Villivakkam', 'Pallavaram',
    'Velachery', 'Guindy', 'Tambaram', 'Chromepet', 'Pallikaranai', 'Medavakkam', 
    'Perumbakkam', 'Sholinganallur', 'Thoraipakkam', 'OMR', 'Siruseri', 'ECR', 
    'Perungudi', 'Alandur', 'Mudichur', 'Guduvanchery', 'Porur', 'Virugambakkam', 
    'Korattur', 'Ambattur', 'Avadi', 'Red Hills', 'Madhavaram', 'Manali', 'Poonamallee', 
    'Valasaravakkam', 'Marina', 'Phoenix', 'Kasimedu', 'Purasawalkam', 'Mogappair', 
    'Saidapet', 'Adambakkam', 'Madipakkam', 'Otteri', 'Ashok Nagar', 'Vadapalani', 
    'Thousand Lights', 'Bessy Beach', 'Jeeva Park', 'North Chennai', 'Slum Clearance'
  ];
  loc TEXT;
BEGIN
  FOR loc IN SELECT unnest(localities)
  LOOP
    IF description ILIKE '%' || loc || '%' THEN
      RETURN loc;
    END IF;
  END LOOP;
  RETURN NULL;
END;
$$ LANGUAGE plpgsql IMMUTABLE;

