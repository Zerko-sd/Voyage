# Crime Data Import - Summary

## What Was Created

I've created a complete database import system for your crime data from `data.csv`. Here's what you now have:

### Database Files

1. **`database/add_crimes_table.sql`**
   - Creates the `crimes` table to store individual crime incidents
   - Includes indexes and triggers

2. **`database/import_crimes_data.sql`**
   - Helper functions for geocoding Chennai localities
   - Functions to classify crimes and determine severity
   - Locality-to-coordinates mapping

3. **`database/crimes_insert.sql`** (Generated)
   - SQL INSERT statements for all 211 crime records
   - Includes geocoded coordinates and classifications
   - Generated from your `data.csv` file

4. **`database/link_crimes_to_places.sql`**
   - Links crimes to existing places (within 2km radius)
   - Creates new places for unique crime localities
   - Updates place_id references

5. **`database/aggregate_crime_data.sql`**
   - Calculates crime metrics (violent_crime, property_crime, accident_rate)
   - Updates `place_safety_attributes` table
   - Updates `places.safety_score` based on crime data
   - Creates historical records in `place_safety_history`
   - Calculates trend scores

6. **`database/import_all_crimes.sql`**
   - Master script that runs all import steps in order

7. **`database/verify_import.sql`**
   - Verification queries to check if import was successful

8. **`database/CRIME_DATA_IMPORT_GUIDE.md`**
   - Complete documentation on how to use the import system

### Processing Script

- **`database/process_crime_csv.js`**
   - Node.js script that processes `data.csv`
   - Extracts localities, geocodes coordinates, classifies crimes
   - Generates SQL INSERT statements

## Quick Start

### Option 1: Run Everything at Once

```sql
-- In PostgreSQL or Supabase SQL Editor
\i database/import_all_crimes.sql
```

### Option 2: Step by Step

```sql
-- 1. Add crimes table
\i database/add_crimes_table.sql

-- 2. Import helper functions
\i database/import_crimes_data.sql

-- 3. Import crime data
\i database/crimes_insert.sql

-- 4. Link to places
\i database/link_crimes_to_places.sql

-- 5. Aggregate data
\i database/aggregate_crime_data.sql
```

### Verify Import

```sql
\i database/verify_import.sql
```

## Data Structure

### Crimes Table Schema

```sql
crimes (
  id UUID PRIMARY KEY,
  case_id TEXT UNIQUE,           -- e.g., "CH-21-0012"
  incident_date DATE,             -- Date of crime
  category TEXT,                  -- "Theft", "Assault", "Cyber Fraud", etc.
  ipc_sections TEXT,              -- IPC sections (e.g., "379", "302")
  description TEXT,               -- Full crime description
  locality TEXT,                  -- Extracted locality (e.g., "T Nagar")
  district TEXT DEFAULT 'Chennai',
  lat FLOAT,                      -- Geocoded latitude
  lng FLOAT,                      -- Geocoded longitude
  crime_type TEXT,                -- 'violent', 'property', 'cyber', 'other'
  severity TEXT,                  -- 'low', 'medium', 'high', 'critical'
  place_id UUID,                  -- Linked to places table
  data_source TEXT DEFAULT 'csv_import',
  created_at TIMESTAMP,
  updated_at TIMESTAMP
)
```

### What Gets Created/Updated

1. **Crimes Table**: 211 crime records with:
   - Geocoded coordinates for Chennai localities
   - Classified crime types and severity
   - Extracted locality information

2. **Places Table**: 
   - New places created for unique crime localities
   - Existing places updated with crime-linked data

3. **Place Safety Attributes**:
   - `violent_crime` - Calculated from violent crime incidents
   - `property_crime` - Calculated from property crime incidents
   - `accident_rate` - Calculated from other incidents
   - `confidence_score` - Based on number of incidents

4. **Place Safety Scores**:
   - Updated based on aggregated crime data
   - Formula: `100 - (violent_crime*0.4 + property_crime*0.3 + accident_rate*0.2 + ...)`

5. **Place Safety History**:
   - Monthly aggregates of crime incidents
   - Trend calculations (improving/declining/stable)

## Key Features

### Automatic Geocoding
- Extracts locality names from crime descriptions
- Maps to approximate coordinates using Chennai locality database
- Defaults to Chennai center if locality not found

### Crime Classification
- **Violent**: Murder, Assault, Kidnapping, Domestic Violence
- **Property**: Theft, Burglary, Robbery, Cheating
- **Cyber**: All cyber fraud cases
- **Other**: Public Nuisance, Narcotics, etc.

### Severity Classification
- **Critical**: Murder (IPC 302)
- **High**: Assault, Robbery, Attempt to Murder (IPC 307, 397)
- **Medium**: Burglary, Theft, Cyber Fraud
- **Low**: Other crimes

### Place Linking
- Automatically links crimes to places within 2km radius
- Creates new places for localities without existing places
- Updates place safety scores based on crime density

## Example Queries

### Find crimes in a specific area
```sql
SELECT * FROM crimes 
WHERE locality = 'T Nagar'
ORDER BY incident_date DESC;
```

### Get safety score for a place
```sql
SELECT 
  p.name,
  p.locality,
  p.safety_score,
  psa.violent_crime,
  psa.property_crime,
  COUNT(c.id) as total_crimes
FROM places p
LEFT JOIN place_safety_attributes psa ON psa.place_id = p.id
LEFT JOIN crimes c ON c.place_id = p.id
WHERE p.locality = 'Velachery'
GROUP BY p.id, p.name, p.locality, p.safety_score, psa.violent_crime, psa.property_crime;
```

### Crime trends over time
```sql
SELECT 
  DATE_TRUNC('month', incident_date) as month,
  COUNT(*) as crime_count,
  COUNT(*) FILTER (WHERE crime_type = 'violent') as violent
FROM crimes
WHERE incident_date >= '2023-01-01'
GROUP BY month
ORDER BY month;
```

## Regenerating Import File

If you update `data.csv`, regenerate the SQL file:

```bash
cd Voyage
node database/process_crime_csv.js > database/crimes_insert.sql
```

Then re-run the import (it uses `ON CONFLICT DO NOTHING` so won't duplicate).

## Next Steps

1. **Run the import** using one of the methods above
2. **Verify the data** using `verify_import.sql`
3. **Review safety scores** - Check if they make sense for your areas
4. **Adjust weights** - Modify safety score calculation in `aggregate_crime_data.sql` if needed
5. **Add more data** - Import additional crime data sources as needed

## Support

See `database/CRIME_DATA_IMPORT_GUIDE.md` for detailed documentation and troubleshooting.

