# 🚀 Import Crime Data to Supabase - Quick Guide

Follow these simple steps to import all your crime data into Supabase.

## Step 1: Open Supabase SQL Editor

1. Go to https://supabase.com/dashboard
2. Select your project
3. Click **SQL Editor** (left sidebar)
4. Click **New Query** button

## Step 2: Run SQL Files in Order

Run each file below by copying its contents into the SQL Editor and clicking **Run**:

### ✅ Step 2.1: Create Crimes Table

1. Open file: `database/add_crimes_table.sql`
2. Copy **ALL** contents (Ctrl+A, Ctrl+C)
3. Paste into Supabase SQL Editor
4. Click **Run** button (bottom right)
5. Wait for ✅ Success message

### ✅ Step 2.2: Add Helper Functions

1. Open file: `database/import_crimes_data.sql`
2. Copy **ALL** contents
3. Paste into Supabase SQL Editor
4. Click **Run**
5. Wait for ✅ Success

### ✅ Step 2.3: Import Crime Data (211 records)

1. Open file: `database/crimes_insert.sql`
2. Copy **ALL** contents (this is a large file - ~4800 lines)
3. Paste into Supabase SQL Editor
4. Click **Run**
5. ⏳ Wait 10-30 seconds for completion
6. Wait for ✅ Success

### ✅ Step 2.4: Link Crimes to Places

1. Open file: `database/link_crimes_to_places.sql`
2. Copy **ALL** contents
3. Paste into Supabase SQL Editor
4. Click **Run**
5. Wait for ✅ Success

### ✅ Step 2.5: Calculate Safety Scores

1. Open file: `database/aggregate_crime_data.sql`
2. Copy **ALL** contents
3. Paste into Supabase SQL Editor
4. Click **Run**
5. ⏳ Wait 10-20 seconds
6. Wait for ✅ Success

## Step 3: Verify Import

1. Open file: `database/verify_import.sql`
2. Copy **ALL** contents
3. Paste into Supabase SQL Editor
4. Click **Run**
5. Review the results - you should see:
   - Total crimes: 211
   - Crimes by type (violent, property, cyber, other)
   - Places with crime data
   - Safety scores updated

## ✅ Done!

Your crime data is now imported. You can:

- View data in **Table Editor** → `crimes` table
- Check places with updated safety scores in `places` table
- See safety metrics in `place_safety_attributes` table

## Quick Verification Query

Run this in SQL Editor to see a summary:

```sql
SELECT 
  'Total Crimes' as metric,
  COUNT(*)::text as value
FROM crimes
UNION ALL
SELECT 
  'Crimes Linked to Places',
  COUNT(*)::text
FROM crimes
WHERE place_id IS NOT NULL
UNION ALL
SELECT 
  'Places with Crime Data',
  COUNT(DISTINCT place_id)::text
FROM crimes
WHERE place_id IS NOT NULL;
```

## Troubleshooting

**Error: "relation 'places' does not exist"**
→ Run `database/schema.sql` first

**Error: "function does not exist"**
→ Make sure you ran Step 2.2 before Step 2.3

**Import seems slow**
→ Normal for large files. Wait 1-2 minutes.

**Need more help?**
→ See `database/SUPABASE_IMPORT_GUIDE.md` for detailed guide

