# Import Crime Data into Supabase - Step by Step Guide

This guide will help you import all crime data from `data.csv` into your Supabase database.

## Prerequisites

✅ You have a Supabase account and project created  
✅ You have run `database/schema.sql` in your Supabase SQL Editor  
✅ Your Supabase project is active and accessible

## Quick Import (Recommended)

### Step 1: Open Supabase SQL Editor

1. Go to your Supabase dashboard: https://supabase.com/dashboard
2. Select your project
3. Click **SQL Editor** in the left sidebar
4. Click **New Query**

### Step 2: Run Each SQL File in Order

Copy and paste each file's contents into the SQL Editor and click **Run**:

#### 2.1: Add Crimes Table
- Open `database/add_crimes_table.sql`
- Copy entire contents
- Paste into SQL Editor
- Click **Run** (bottom right)
- Wait for ✅ Success

#### 2.2: Import Helper Functions
- Open `database/import_crimes_data.sql`
- Copy entire contents
- Paste into SQL Editor
- Click **Run**
- Wait for ✅ Success

#### 2.3: Import Crime Data
- Open `database/crimes_insert.sql`
- Copy entire contents (it's a large file with ~211 INSERT statements)
- Paste into SQL Editor
- Click **Run**
- ⏳ This may take 10-30 seconds
- Wait for ✅ Success

#### 2.4: Link Crimes to Places
- Open `database/link_crimes_to_places.sql`
- Copy entire contents
- Paste into SQL Editor
- Click **Run**
- Wait for ✅ Success

#### 2.5: Aggregate Crime Data
- Open `database/aggregate_crime_data.sql`
- Copy entire contents
- Paste into SQL Editor
- Click **Run**
- ⏳ This may take 10-20 seconds
- Wait for ✅ Success

### Step 3: Verify Import

- Open `database/verify_import.sql`
- Copy entire contents
- Paste into SQL Editor
- Click **Run**
- Review the results to confirm everything imported correctly

## Alternative: Use Combined File

If you prefer, you can use the combined file:

1. Open `database/import_all_crimes_combined.sql` (see below)
2. Copy entire contents
3. Paste into Supabase SQL Editor
4. Click **Run**
5. Wait for completion (may take 1-2 minutes)

## What Gets Imported

- ✅ **211 crime records** from your CSV
- ✅ **Geocoded coordinates** for Chennai localities
- ✅ **Crime classifications** (violent/property/cyber/other)
- ✅ **Severity levels** (critical/high/medium/low)
- ✅ **Places created/updated** with crime data
- ✅ **Safety scores calculated** based on crime density
- ✅ **Historical data** for trend analysis

## Verification Queries

After import, run these in SQL Editor to verify:

```sql
-- Check total crimes
SELECT COUNT(*) as total_crimes FROM crimes;

-- Check crimes by type
SELECT crime_type, COUNT(*) 
FROM crimes 
GROUP BY crime_type;

-- Check places with crime data
SELECT p.name, p.locality, COUNT(c.id) as crime_count
FROM places p
LEFT JOIN crimes c ON c.place_id = p.id
WHERE c.id IS NOT NULL
GROUP BY p.id, p.name, p.locality
ORDER BY crime_count DESC
LIMIT 10;
```

## Troubleshooting

### Error: "relation 'places' does not exist"
**Solution**: Run `database/schema.sql` first to create all base tables.

### Error: "function does not exist"
**Solution**: Make sure you ran `database/import_crimes_data.sql` before `crimes_insert.sql`.

### Error: "duplicate key value violates unique constraint"
**Solution**: This is normal - the INSERT statements use `ON CONFLICT DO NOTHING`, so duplicates are skipped.

### Import seems stuck
**Solution**: Large imports can take time. Wait 1-2 minutes. Check the "Running" indicator in Supabase.

### No crimes linked to places
**Solution**: Run `database/link_crimes_to_places.sql` again. It creates new places for localities.

## Viewing Your Data

After import, you can view the data in Supabase:

1. Go to **Table Editor** (left sidebar)
2. Click on **crimes** table to see all crime records
3. Click on **places** table to see places with updated safety scores
4. Click on **place_safety_attributes** to see calculated metrics

## Next Steps

1. ✅ Verify data using `verify_import.sql`
2. ✅ Check safety scores make sense for your areas
3. ✅ Test your application - it should now use real crime data
4. ✅ Add more crime data as needed

## Need Help?

- Check `CRIME_DATA_IMPORT_GUIDE.md` for detailed documentation
- Review error messages in Supabase SQL Editor
- Check Supabase logs in the dashboard

