-- Master Script: Import All Crime Data
-- Run this script to import all crime data in one go
-- Make sure schema.sql has been run first!

BEGIN;

-- Step 1: Add crimes table
\echo 'Step 1: Adding crimes table...'
\i add_crimes_table.sql

-- Step 2: Import helper functions
\echo 'Step 2: Importing helper functions...'
\i import_crimes_data.sql

-- Step 3: Import crime data from CSV
\echo 'Step 3: Importing crime records...'
\i crimes_insert.sql

-- Step 4: Link crimes to places
\echo 'Step 4: Linking crimes to places...'
\i link_crimes_to_places.sql

-- Step 5: Aggregate crime data
\echo 'Step 5: Aggregating crime data and updating safety scores...'
\i aggregate_crime_data.sql

COMMIT;

\echo 'Crime data import completed successfully!'
\echo 'Run verification queries from CRIME_DATA_IMPORT_GUIDE.md to check the data.'

