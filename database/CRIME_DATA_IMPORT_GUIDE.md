# Crime Data Import Guide

This guide explains how to import the crime data from `data.csv` into your SafeSpot database.

## Overview

The crime data import process consists of several steps:

1. **Add Crimes Table** - Creates the `crimes` table to store individual crime incidents
2. **Import Helper Functions** - Creates functions for geocoding and classification
3. **Import Crime Data** - Inserts all crime records from CSV
4. **Link to Places** - Associates crimes with existing places or creates new places
5. **Aggregate Data** - Calculates safety metrics and updates place attributes

## Prerequisites

- PostgreSQL database (or Supabase) with the main schema already created
- The `schema.sql` file should have been run first
- Access to run SQL scripts on your database

## Step-by-Step Import Process

### Step 1: Run the Main Schema (if not already done)

```sql
-- Run this first if you haven't already
\i database/schema.sql
```

### Step 2: Add Crimes Table

```sql
\i database/add_crimes_table.sql
```

This creates:
- `crimes` table to store individual crime incidents
- Indexes for efficient queries
- Triggers for auto-updating timestamps

### Step 3: Import Helper Functions

```sql
\i database/import_crimes_data.sql
```

This creates:
- `get_locality_coords()` - Maps Chennai localities to coordinates
- `classify_crime_type()` - Categorizes crimes (violent/property/cyber/other)
- `determine_severity()` - Assigns severity levels
- `extract_locality()` - Extracts locality names from descriptions

### Step 4: Import Crime Data

```sql
\i database/crimes_insert.sql
```

This inserts all 211 crime records from `data.csv` with:
- Geocoded coordinates based on locality
- Classified crime types and severity
- Extracted locality information

**Note**: If you need to regenerate this file, run:
```bash
node database/process_crime_csv.js > database/crimes_insert.sql
```

### Step 5: Link Crimes to Places

```sql
\i database/link_crimes_to_places.sql
```

This:
- Links crimes to existing places within 2km radius
- Creates new places for unique crime localities
- Updates `place_id` in crimes table

### Step 6: Aggregate Crime Data

```sql
\i database/aggregate_crime_data.sql
```

This:
- Calculates crime metrics (violent_crime, property_crime, accident_rate)
- Updates `place_safety_attributes` table
- Updates `places.safety_score` based on crime data
- Creates historical records in `place_safety_history`
- Calculates trend scores

## Quick Import (All Steps)

If you want to run everything at once, use this script:

```sql
-- Master import script
BEGIN;

\i database/add_crimes_table.sql
\i database/import_crimes_data.sql
\i database/crimes_insert.sql
\i database/link_crimes_to_places.sql
\i database/aggregate_crime_data.sql

COMMIT;
```

## For Supabase Users

1. Go to your Supabase dashboard
2. Navigate to **SQL Editor**
3. Run each SQL file in order (copy-paste the contents)
4. Or use the Supabase CLI:
   ```bash
   supabase db execute -f database/add_crimes_table.sql
   supabase db execute -f database/import_crimes_data.sql
   supabase db execute -f database/crimes_insert.sql
   supabase db execute -f database/link_crimes_to_places.sql
   supabase db execute -f database/aggregate_crime_data.sql
   ```

## Data Structure

### Crimes Table

Each crime record contains:
- `case_id` - Unique case identifier (e.g., CH-21-0012)
- `incident_date` - Date of the crime
- `category` - Crime category (Theft, Assault, Cyber Fraud, etc.)
- `ipc_sections` - Indian Penal Code sections
- `description` - Detailed description of the crime
- `locality` - Extracted locality name (e.g., "T Nagar", "Velachery")
- `lat`, `lng` - Geocoded coordinates
- `crime_type` - Classified as: violent, property, cyber, or other
- `severity` - Classified as: low, medium, high, or critical
- `place_id` - Linked to places table (if within 2km)

### Geocoding

The system automatically:
- Extracts locality names from crime descriptions
- Maps localities to approximate coordinates using a predefined mapping
- Defaults to Chennai center (13.0827, 80.2707) if locality not found

### Safety Score Calculation

Safety scores are calculated as:
```
safety_score = 100 - (
  violent_crime * 0.4 +
  property_crime * 0.3 +
  accident_rate * 0.2 +
  (100 - safety_infra) * 0.1
)
```

Lower crime rates = Higher safety scores

## Verification

After import, verify the data:

```sql
-- Check total crimes imported
SELECT COUNT(*) FROM crimes;

-- Check crimes by type
SELECT crime_type, COUNT(*) 
FROM crimes 
GROUP BY crime_type;

-- Check crimes linked to places
SELECT COUNT(*) 
FROM crimes 
WHERE place_id IS NOT NULL;

-- Check places with crime data
SELECT p.name, p.locality, p.safety_score, 
       COUNT(c.id) as crime_count
FROM places p
LEFT JOIN crimes c ON c.place_id = p.id
GROUP BY p.id, p.name, p.locality, p.safety_score
ORDER BY crime_count DESC
LIMIT 20;

-- Check safety attributes updated
SELECT COUNT(*) 
FROM place_safety_attributes 
WHERE data_source = 'crime_aggregation';
```

## Troubleshooting

### Issue: Crimes not linking to places

**Solution**: The `link_crimes_to_places.sql` script creates new places for localities that don't have existing places. Check if places were created:

```sql
SELECT * FROM places WHERE category = 'area';
```

### Issue: Safety scores not updating

**Solution**: Make sure `aggregate_crime_data.sql` ran successfully. Check for errors:

```sql
SELECT * FROM place_safety_attributes 
WHERE data_source = 'crime_aggregation' 
LIMIT 10;
```

### Issue: Coordinates seem incorrect

**Solution**: The coordinates are approximate based on locality names. For more accurate geocoding, you can:
1. Use a geocoding API (Google Maps, OpenStreetMap)
2. Manually update coordinates in the `crimes` table
3. Improve the locality mapping in `import_crimes_data.sql`

## Updating Data

To add new crime data:

1. Add new records to `data.csv`
2. Regenerate the SQL file:
   ```bash
   node database/process_crime_csv.js > database/crimes_insert.sql
   ```
3. Run only the new INSERT statements (they use `ON CONFLICT DO NOTHING`)
4. Re-run aggregation:
   ```sql
   \i database/aggregate_crime_data.sql
   ```

## Data Statistics

After import, you should have:
- ~211 crime records (from data.csv)
- Multiple places created/updated with crime data
- Safety attributes calculated for each place
- Historical data for trend analysis

## Next Steps

After importing crime data:

1. **Review Safety Scores**: Check if safety scores make sense for your areas
2. **Adjust Weights**: Modify the safety score calculation in `aggregate_crime_data.sql` if needed
3. **Add More Data**: Import additional crime data sources
4. **Set Up Automation**: Create a scheduled job to update crime metrics regularly

## Support

If you encounter issues:
1. Check the SQL error messages
2. Verify all prerequisite tables exist
3. Ensure you have proper database permissions
4. Review the verification queries above

