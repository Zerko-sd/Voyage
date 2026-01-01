/**
 * Process Crime CSV Data and Generate SQL Insert Statements
 * 
 * This script reads data.csv and generates SQL INSERT statements
 * for the crimes table with geocoded coordinates.
 * 
 * Usage: node database/process_crime_csv.js > database/crimes_insert.sql
 */

const fs = require('fs');
const path = require('path');

// Chennai Locality Coordinates Mapping
const localityCoords = {
  // North Chennai
  'Royapuram': [13.1100, 80.2900],
  'Tondiarpet': [13.1200, 80.3000],
  'Washermanpet': [13.1050, 80.2850],
  'Perambur': [13.1150, 80.2400],
  'Vyasarpadi': [13.1080, 80.2500],
  'Kolathur': [13.1000, 80.2300],
  'Sowcarpet': [13.0900, 80.2800],
  'Parry': [13.0850, 80.2750],
  'Egmore': [13.0800, 80.2600],
  'Central': [13.0827, 80.2707],
  
  // Central Chennai
  'T. Nagar': [13.0418, 80.2341],
  'T Nagar': [13.0418, 80.2341],
  'Nungambakkam': [13.0600, 80.2400],
  'Mylapore': [13.0339, 80.2676],
  'Triplicane': [13.0550, 80.2700],
  'Adyar': [13.0067, 80.2600],
  'Besant Nagar': [13.0030, 80.2650],
  'Besant': [13.0030, 80.2650],
  'Boat Club': [13.0100, 80.2700],
  'Poes Garden': [13.0200, 80.2500],
  'Alwarpet': [13.0300, 80.2550],
  'Royapettah': [13.0400, 80.2600],
  'Chetpet': [13.0700, 80.2450],
  'Kilpauk': [13.0750, 80.2400],
  'Aminjikarai': [13.0650, 80.2350],
  'Choolaimedu': [13.0680, 80.2380],
  'Anna Nagar': [13.0878, 80.2088],
  'West Mambalam': [13.0350, 80.2300],
  'Mambalam': [13.0350, 80.2300],
  'Mandaveli': [13.0250, 80.2650],
  'Kodambakkam': [13.0500, 80.2200],
  'Villivakkam': [13.1100, 80.2000],
  'Pallavaram': [12.9700, 80.1500],
  
  // South Chennai
  'Velachery': [12.9810, 80.2209],
  'Guindy': [12.9900, 80.2200],
  'Tambaram': [12.9249, 80.1000],
  'Chromepet': [12.9500, 80.1400],
  'Pallikaranai': [12.9400, 80.2000],
  'Medavakkam': [12.9200, 80.1800],
  'Perumbakkam': [12.9100, 80.1900],
  'Sholinganallur': [12.9000, 80.2200],
  'Thoraipakkam': [12.9141, 80.2270],
  'OMR': [12.9141, 80.2270],
  'Siruseri': [12.8800, 80.2000],
  'ECR': [12.8500, 80.2500],
  'Perungudi': [12.9600, 80.2500],
  'Alandur': [12.9800, 80.2000],
  'Mudichur': [12.9300, 80.1500],
  'Guduvanchery': [12.8700, 80.1000],
  
  // West Chennai
  'Porur': [13.0350, 80.1500],
  'Virugambakkam': [13.0550, 80.1800],
  'Korattur': [13.1050, 80.2000],
  'Ambattur': [13.0950, 80.1900],
  'Avadi': [13.1150, 80.1000],
  'Red Hills': [13.1300, 80.2200],
  'Madhavaram': [13.1250, 80.2100],
  'Manali': [13.1400, 80.2500],
  'Poonamallee': [13.0500, 80.1000],
  'Valasaravakkam': [13.0400, 80.1600],
  
  // Other areas
  'Marina': [13.0499, 80.2824],
  'Phoenix': [13.0109, 80.2290],
  'Kasimedu': [13.1200, 80.3000],
  'Purasawalkam': [13.0900, 80.2600],
  'Mogappair': [13.0800, 80.1800],
  'Saidapet': [13.0200, 80.2200],
  'Adambakkam': [12.9700, 80.2000],
  'Madipakkam': [12.9600, 80.1900],
  'Otteri': [13.1000, 80.2500],
  'Ashok Nagar': [13.0450, 80.2300],
  'Vadapalani': [13.0520, 80.2200],
  'Thousand Lights': [13.0600, 80.2500],
  'Bessy Beach': [13.0030, 80.2650],
  'Jeeva Park': [13.0418, 80.2341],
  'Koyambedu': [13.0700, 80.2000],
};

// Function to extract locality from description
function extractLocality(description) {
  if (!description) return null;
  
  const desc = description.toLowerCase();
  
  // Check each locality
  for (const [locality, coords] of Object.entries(localityCoords)) {
    if (desc.includes(locality.toLowerCase())) {
      return locality;
    }
  }
  
  // Try partial matches
  const partialMatches = {
    't. nagar': 'T. Nagar',
    't nagar': 'T Nagar',
    'anna nagar': 'Anna Nagar',
    'besant nagar': 'Besant Nagar',
    'west mambalam': 'West Mambalam',
    'boat club': 'Boat Club',
    'poes garden': 'Poes Garden',
    'red hills': 'Red Hills',
    'ashok nagar': 'Ashok Nagar',
    'thousand lights': 'Thousand Lights',
  };
  
  for (const [key, value] of Object.entries(partialMatches)) {
    if (desc.includes(key)) {
      return value;
    }
  }
  
  return null;
}

// Function to classify crime type
function classifyCrimeType(category) {
  if (!category) return 'other';
  
  const cat = category.toLowerCase();
  if (cat.includes('murder') || cat.includes('assault') || cat.includes('kidnapping') || 
      cat.includes('domestic violence')) {
    return 'violent';
  }
  if (cat.includes('theft') || cat.includes('burglary') || cat.includes('robbery') || 
      cat.includes('cheating')) {
    return 'property';
  }
  if (cat.includes('cyber')) {
    return 'cyber';
  }
  return 'other';
}

// Function to determine severity
function determineSeverity(category, ipcSections) {
  if (!category) return 'low';
  
  const cat = category.toLowerCase();
  const ipc = (ipcSections || '').toLowerCase();
  
  if (cat.includes('murder') || ipc.includes('302')) {
    return 'critical';
  }
  if (cat.includes('assault') || cat.includes('robbery') || ipc.includes('307') || 
      ipc.includes('397')) {
    return 'high';
  }
  if (cat.includes('burglary') || cat.includes('theft') || cat.includes('cyber')) {
    return 'medium';
  }
  return 'low';
}

// Function to get coordinates for locality
function getCoords(locality) {
  if (!locality) return [13.0827, 80.2707]; // Default Chennai center
  
  // Direct match
  if (localityCoords[locality]) {
    return localityCoords[locality];
  }
  
  // Try case-insensitive match
  for (const [key, value] of Object.entries(localityCoords)) {
    if (key.toLowerCase() === locality.toLowerCase()) {
      return value;
    }
  }
  
  return [13.0827, 80.2707]; // Default
}

// Read and parse CSV
function processCSV() {
  const csvPath = path.join(__dirname, '..', 'data.csv');
  const csvContent = fs.readFileSync(csvPath, 'utf-8');
  const lines = csvContent.split('\n');
  
  // Skip header
  const dataLines = lines.slice(1).filter(line => line.trim());
  
  console.log('-- Crime Data Import');
  console.log('-- Generated from data.csv');
  console.log('-- Run this after add_crimes_table.sql and import_crimes_data.sql\n');
  console.log('BEGIN;\n');
  
  for (const line of dataLines) {
    // Parse CSV line (handle commas in quoted fields)
    const fields = [];
    let currentField = '';
    let inQuotes = false;
    
    for (let i = 0; i < line.length; i++) {
      const char = line[i];
      
      if (char === '"') {
        inQuotes = !inQuotes;
      } else if (char === ',' && !inQuotes) {
        fields.push(currentField.trim());
        currentField = '';
      } else {
        currentField += char;
      }
    }
    fields.push(currentField.trim()); // Add last field
    
    if (fields.length < 5) continue;
    
    const [caseId, date, category, ipcSections, description] = fields;
    
    if (!caseId || !date) continue;
    
    // Extract locality from description
    const locality = extractLocality(description);
    const [lat, lng] = getCoords(locality);
    
    // Classify crime
    const crimeType = classifyCrimeType(category);
    const severity = determineSeverity(category, ipcSections);
    
    // Escape single quotes in text fields
    const escape = (str) => (str || '').replace(/'/g, "''");
    
    // Generate INSERT statement
    const sql = `INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  '${escape(caseId)}',
  '${date}',
  '${escape(category)}',
  ${ipcSections ? `'${escape(ipcSections)}'` : 'NULL'},
  ${description ? `'${escape(description)}'` : 'NULL'},
  ${locality ? `'${escape(locality)}'` : 'NULL'},
  'Chennai',
  'Tamil Nadu',
  'India',
  ${lat},
  ${lng},
  '${crimeType}',
  '${severity}',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;`;
    
    console.log(sql);
    console.log('');
  }
  
  console.log('COMMIT;');
  console.log('\n-- Update place_id links based on proximity');
  console.log('-- This will be done in a separate script');
}

// Run the script
processCSV();

