-- Add Crimes/Incidents Table to Schema
-- Run this after schema.sql

-- Crimes/Incidents Table
CREATE TABLE crimes (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  case_id TEXT UNIQUE NOT NULL,
  incident_date DATE NOT NULL,
  category TEXT NOT NULL,
  ipc_sections TEXT,
  description TEXT,
  
  -- Location (can be linked to places table)
  locality TEXT,
  district TEXT DEFAULT 'Chennai',
  region TEXT DEFAULT 'Tamil Nadu',
  country TEXT DEFAULT 'India',
  
  -- Coordinates (extracted/geocoded from description)
  lat FLOAT,
  lng FLOAT,
  
  -- Crime Classification
  crime_type TEXT CHECK (crime_type IN ('violent', 'property', 'cyber', 'other')),
  severity TEXT CHECK (severity IN ('low', 'medium', 'high', 'critical')),
  
  -- Link to places (if location matches)
  place_id UUID REFERENCES places(id) ON DELETE SET NULL,
  
  -- Metadata
  data_source TEXT DEFAULT 'csv_import',
  created_at TIMESTAMP DEFAULT NOW(),
  updated_at TIMESTAMP DEFAULT NOW()
);

-- Indexes for efficient queries
CREATE INDEX idx_crimes_date ON crimes(incident_date DESC);
CREATE INDEX idx_crimes_category ON crimes(category);
CREATE INDEX idx_crimes_locality ON crimes(locality);
CREATE INDEX idx_crimes_crime_type ON crimes(crime_type);
CREATE INDEX idx_crimes_place_id ON crimes(place_id);
CREATE INDEX idx_crimes_lat_lng ON crimes(lat, lng);
CREATE INDEX idx_crimes_severity ON crimes(severity);

-- Function to auto-update updated_at
CREATE TRIGGER update_crimes_updated_at BEFORE UPDATE ON crimes
  FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

