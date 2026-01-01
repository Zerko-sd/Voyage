-- Crime Data Import
-- Generated from data.csv
-- Run this after add_crimes_table.sql and import_crimes_data.sql

BEGIN;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-21-0012',
  '2021-01-15',
  'Theft',
  '379',
  'Motorbike stolen from parking area outside a supermarket in Vadapalani.',
  'Vadapalani',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.052,
  80.22,
  'property',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-21-0028',
  '2021-01-22',
  'Assault',
  '323',
  'Clash between two neighbors over water pipe connection in Triplicane.',
  'Triplicane',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.055,
  80.27,
  'violent',
  'high',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-21-0045',
  '2021-02-03',
  'Cyber Fraud',
  '420 IT Act 66C',
  'Victim lost Γé╣25',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'cyber',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-21-0067',
  '2021-02-14',
  'Women Safety',
  '354D',
  'Stalking complaint filed by college student against unknown biker in Guindy.',
  'Guindy',
  'Chennai',
  'Tamil Nadu',
  'India',
  12.99,
  80.22,
  'other',
  'low',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-21-0089',
  '2021-02-28',
  'Burglary',
  '457 380',
  'Night break-in at a mobile shop in Washermanpet; accessories stolen.',
  'Washermanpet',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.105,
  80.285,
  'property',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-21-0118',
  '2021-03-12',
  'Assault',
  '324',
  'Group fight at a TASMAC bar in Velachery; one injured with broken bottle.',
  'Velachery',
  'Chennai',
  'Tamil Nadu',
  'India',
  12.981,
  80.2209,
  'violent',
  'high',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-21-0134',
  '2021-03-25',
  'Cheating',
  '420',
  'Fake travel agent collected money for flight tickets and vanished in Egmore.',
  'Egmore',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.08,
  80.26,
  'property',
  'low',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-21-0155',
  '2021-04-05',
  'Robbery',
  '392',
  'Chain snatching reported by morning walker near Jeeva Park T. Nagar.',
  'T. Nagar',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0418,
  80.2341,
  'property',
  'high',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-21-0178',
  '2021-04-18',
  'Cyber Fraud',
  'IT Act 66D',
  'Phishing SMS regarding ''KYC Expiry'' led to bank account drain of Γé╣40k.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'cyber',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-21-0201',
  '2021-05-02',
  'Theft',
  '379',
  'Bicycle stolen from apartment corridor in Mandaveli.',
  'Mandaveli',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.025,
  80.265,
  'property',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-21-0222',
  '2021-05-15',
  'Domestic Violence',
  '498A',
  'Harassment by husband and in-laws reported in Perambur.',
  'Perambur',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.115,
  80.24,
  'violent',
  'low',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-21-0245',
  '2021-05-28',
  'Murder',
  '302',
  'Drunken brawl resulted in fatal stabbing of a laborer in Kodambakkam.',
  'Kodambakkam',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.05,
  80.22,
  'violent',
  'critical',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-21-0267',
  '2021-06-10',
  'Cyber Fraud',
  '420',
  'Oxygen concentrator fraud; victim paid advance but received no device.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'cyber',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-21-0289',
  '2021-06-22',
  'Burglary',
  '454 380',
  'Daylight burglary in Anna Nagar; gold ornaments worth Γé╣5 lakh missing.',
  'Anna Nagar',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0878,
  80.2088,
  'property',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-21-0312',
  '2021-07-05',
  'Robbery',
  '392',
  'Phone snatched from pedestrian on OMR near Thoraipakkam.',
  'Thoraipakkam',
  'Chennai',
  'Tamil Nadu',
  'India',
  12.9141,
  80.227,
  'property',
  'high',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-21-0334',
  '2021-07-18',
  'Assault',
  '323 506(ii)',
  'Argument over parking space turned violent in Sowcarpet.',
  'Sowcarpet',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.09,
  80.28,
  'violent',
  'high',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-21-0356',
  '2021-08-01',
  'Theft',
  '379',
  'Laptop bag stolen from unlocked car at Bessy Beach parking.',
  'Bessy Beach',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.003,
  80.265,
  'property',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-21-0378',
  '2021-08-14',
  'Cyber Fraud',
  'IT Act 66C',
  'Social media profile hacked; hacker demanded money from friends list.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'cyber',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-21-0401',
  '2021-08-29',
  'Women Safety',
  '509',
  'Lewd comments made at women at a bus stop in Adyar.',
  'Adyar',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0067,
  80.26,
  'other',
  'low',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-21-0423',
  '2021-09-10',
  'Cheating',
  '420',
  'Job scam; aspirants paid for ''railway jobs'' to fake recruiter in Central.',
  'Central',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'property',
  'low',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-21-0445',
  '2021-09-22',
  'Narcotics',
  'NDPS Act',
  'Possession of 1kg ganja reported near a college in Tambaram.',
  'Tambaram',
  'Chennai',
  'Tamil Nadu',
  'India',
  12.9249,
  80.1,
  'other',
  'low',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-21-0467',
  '2021-10-05',
  'Robbery',
  '397',
  'Armed robbery attempt at a pawn shop in North Chennai; public raised alarm.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'property',
  'high',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-21-0489',
  '2021-10-18',
  'Cyber Fraud',
  '420',
  'Lottery scam; victim tricked into paying ''tax'' for a fake prize win.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'cyber',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-21-0512',
  '2021-11-01',
  'Theft',
  '379',
  'Copper wires stolen from construction site in Porur.',
  'Porur',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.035,
  80.15,
  'property',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-21-0534',
  '2021-11-15',
  'Assault',
  '307',
  'Attempt to murder due to previous enmity in Vyasarpadi.',
  'Vyasarpadi',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.108,
  80.25,
  'violent',
  'high',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-21-0556',
  '2021-11-28',
  'Burglary',
  '457',
  'Temple hundi broken into in West Mambalam; cash stolen.',
  'West Mambalam',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.035,
  80.23,
  'property',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-21-0578',
  '2021-12-10',
  'Cyber Fraud',
  'IT Act 66D',
  'Fake electricity bill message; remote access app installed funds stolen.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'cyber',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-21-0601',
  '2021-12-22',
  'Women Safety',
  '354',
  'Inappropriate touch reported by passenger in share auto near Koyambedu.',
  'Koyambedu',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.07,
  80.2,
  'other',
  'low',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-21-0623',
  '2021-12-30',
  'Public Nuisance',
  '290',
  'New Year''s Eve ruckus created by drunk youths in Besant Nagar.',
  'T Nagar',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0418,
  80.2341,
  'other',
  'low',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-22-0012',
  '2022-01-08',
  'Murder',
  '302 34',
  'Gang rivalry led to murder of history-sheeter in Royapuram.',
  'Royapuram',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.11,
  80.29,
  'violent',
  'critical',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-22-0034',
  '2022-01-20',
  'Theft',
  '379',
  'Battery theft from multiple parked cars in Madipakkam.',
  'Madipakkam',
  'Chennai',
  'Tamil Nadu',
  'India',
  12.96,
  80.19,
  'property',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-22-0056',
  '2022-02-05',
  'Cyber Fraud',
  '420',
  'Loan app harassment; victim threatened with morphed photos sent to contacts.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'cyber',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-22-0078',
  '2022-02-18',
  'Robbery',
  '392',
  'Elderly woman pushed and gold chain snatched in Alwarpet.',
  'Alwarpet',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.03,
  80.255,
  'property',
  'high',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-22-0101',
  '2022-03-02',
  'Cheating',
  '406',
  'Chit fund owner absconded with investor money in Saidapet.',
  'Saidapet',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.02,
  80.22,
  'property',
  'low',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-22-0123',
  '2022-03-15',
  'Assault',
  '324',
  'Road rage incident between car driver and biker on Mount Road.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'violent',
  'high',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-22-0145',
  '2022-03-28',
  'Cyber Fraud',
  'IT Act 66C',
  'Credit card cloning; unauthorized international transaction of Γé╣50k.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'cyber',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-22-0167',
  '2022-04-10',
  'Women Safety',
  '354A',
  'Sexual harassment complaint at workplace filed by IT employee in Siruseri.',
  'Siruseri',
  'Chennai',
  'Tamil Nadu',
  'India',
  12.88,
  80.2,
  'other',
  'low',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-22-0189',
  '2022-04-22',
  'Burglary',
  '454',
  'House break-in during summer vacation in Nungambakkam.',
  'Nungambakkam',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.06,
  80.24,
  'property',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-22-0212',
  '2022-05-05',
  'Theft',
  '379',
  'Silencer stolen from Eco car parked on street in Virugambakkam.',
  'Virugambakkam',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.055,
  80.18,
  'property',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-22-0234',
  '2022-05-18',
  'Murder',
  '302',
  'Family dispute led to husband killing wife in Kolathur.',
  'Kolathur',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.1,
  80.23,
  'violent',
  'critical',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-22-0256',
  '2022-06-01',
  'Cyber Fraud',
  '420',
  'Fake customer care number scam; victim lost Γé╣15k seeking refund.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'cyber',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-22-0278',
  '2022-06-14',
  'Robbery',
  '394',
  'Couple threatened and robbed of valuables on ECR night drive.',
  'ECR',
  'Chennai',
  'Tamil Nadu',
  'India',
  12.85,
  80.25,
  'property',
  'high',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-22-0301',
  '2022-06-28',
  'Cheating',
  '420',
  'Visa fraud; agent promised Canada work permit and vanished.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'property',
  'low',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-22-0323',
  '2022-07-10',
  'Assault',
  '323',
  'Clash between auto drivers at Egmore station stand.',
  'Egmore',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.08,
  80.26,
  'violent',
  'high',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-22-0345',
  '2022-07-22',
  'Kidnapping',
  '363',
  'Minor boy missing from playground in Tondiarpet; later found.',
  'Tondiarpet',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.12,
  80.3,
  'violent',
  'low',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-22-0367',
  '2022-08-05',
  'Cyber Fraud',
  'IT Act 66D',
  'Matrimonial fraud; ''doctor'' from UK asked for money for customs clearance.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'cyber',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-22-0389',
  '2022-08-18',
  'Theft',
  '379',
  'Expensive shoes stolen from outside residence in Poes Garden.',
  'Poes Garden',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.02,
  80.25,
  'property',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-22-0412',
  '2022-08-30',
  'Women Safety',
  '498A',
  'Dowry harassment complaint filed in Thousand Lights AWPS.',
  'Thousand Lights',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.06,
  80.25,
  'other',
  'low',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-22-0434',
  '2022-09-12',
  'Burglary',
  '457 380',
  'Shop shutter bent and cash box stolen in T. Nagar market.',
  'T. Nagar',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0418,
  80.2341,
  'property',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-22-0456',
  '2022-09-25',
  'Cyber Fraud',
  '420',
  'Crypto investment scam on Telegram; promised 200% returns.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'cyber',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-22-0478',
  '2022-10-08',
  'Murder',
  '302',
  'Man found dead with head injuries near railway track in Perungudi.',
  'Perungudi',
  'Chennai',
  'Tamil Nadu',
  'India',
  12.96,
  80.25,
  'violent',
  'critical',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-22-0501',
  '2022-10-20',
  'Robbery',
  '392',
  'Phone snatched from passenger in moving bus near Chromepet.',
  'Chromepet',
  'Chennai',
  'Tamil Nadu',
  'India',
  12.95,
  80.14,
  'property',
  'high',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-22-0523',
  '2022-11-02',
  'Assault',
  '324',
  'Dispute over cricket match turned violent in Marina Beach ground.',
  'Marina',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0499,
  80.2824,
  'violent',
  'high',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-22-0545',
  '2022-11-15',
  'Theft',
  '380',
  'Handbag stolen from shopper in crowded Purasawalkam shop.',
  'Purasawalkam',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.09,
  80.26,
  'property',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-22-0567',
  '2022-11-28',
  'Cyber Fraud',
  'IT Act 66C',
  'Email hacking; fraudulent invoice sent to client from compromised account.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'cyber',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-22-0589',
  '2022-12-10',
  'Women Safety',
  '509',
  'Stalking and harassment reported by nurse near hospital in Kilpauk.',
  'Kilpauk',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.075,
  80.24,
  'other',
  'low',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-22-0612',
  '2022-12-25',
  'Cheating',
  '420',
  'Fake land documents used to sell plot in Guduvanchery.',
  'Guduvanchery',
  'Chennai',
  'Tamil Nadu',
  'India',
  12.87,
  80.1,
  'property',
  'low',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-23-0012',
  '2023-01-05',
  'Cyber Fraud',
  '420',
  'Part-time job scam; ''movie rating'' task led to loss of Γé╣1 lakh.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'cyber',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-23-0034',
  '2023-01-18',
  'Theft',
  '379',
  'Motorbike stolen from outside gym in Mogappair West.',
  'Mogappair',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.08,
  80.18,
  'property',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-23-0056',
  '2023-02-02',
  'Robbery',
  '392',
  'Pizza delivery boy robbed in dark alley in Pallikaranai.',
  'Pallikaranai',
  'Chennai',
  'Tamil Nadu',
  'India',
  12.94,
  80.2,
  'property',
  'high',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-23-0078',
  '2023-02-15',
  'Assault',
  '307',
  'Gang attack with knives in Otteri; victim hospitalized.',
  'Otteri',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.1,
  80.25,
  'violent',
  'high',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-23-0101',
  '2023-03-01',
  'Burglary',
  '454',
  'Daylight break-in at flat in Ashok Nagar; CCTV covered by thieves.',
  'Ashok Nagar',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.045,
  80.23,
  'property',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-23-0123',
  '2023-03-14',
  'Cyber Fraud',
  'IT Act 66D',
  'FedEx scam; ''illegal parcel'' threat used to extort money.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'cyber',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-23-0145',
  '2023-03-28',
  'Murder',
  '302',
  'Real estate broker killed over commission dispute in Avadi.',
  'Avadi',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.115,
  80.1,
  'violent',
  'critical',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-23-0167',
  '2023-04-10',
  'Women Safety',
  '354',
  'Molestation reported in crowded suburban train near Guindy.',
  'Guindy',
  'Chennai',
  'Tamil Nadu',
  'India',
  12.99,
  80.22,
  'other',
  'low',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-23-0189',
  '2023-04-22',
  'Cheating',
  '406',
  'Rental car stolen by customer using fake ID in Sholinganallur.',
  'Sholinganallur',
  'Chennai',
  'Tamil Nadu',
  'India',
  12.9,
  80.22,
  'property',
  'low',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-23-0212',
  '2023-05-05',
  'Theft',
  '379',
  'Sandalwood tree cut and stolen from private bungalow in Boat Club.',
  'Boat Club',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.01,
  80.27,
  'property',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-23-0234',
  '2023-05-18',
  'Cyber Fraud',
  '420',
  'AePS fraud; money deducted via biometric spoofing without OTP.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'cyber',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-23-0256',
  '2023-06-01',
  'Robbery',
  '397',
  'Jewellery shop heist attempt in Mylapore; offenders fled on bike.',
  'Mylapore',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0339,
  80.2676,
  'property',
  'high',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-23-0278',
  '2023-06-15',
  'Assault',
  '323',
  'Fight between college students at bus stop in Aminjikarai.',
  'Aminjikarai',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.065,
  80.235,
  'violent',
  'high',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-23-0301',
  '2023-06-28',
  'Domestic Violence',
  '498A',
  'Complaint filed against alcoholic husband in Choolaimedu.',
  'Choolaimedu',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.068,
  80.238,
  'violent',
  'low',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-23-0323',
  '2023-07-12',
  'Cyber Fraud',
  'IT Act 66C',
  'Instagram hacked to sell fake Bitcoin schemes to followers.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'cyber',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-23-0345',
  '2023-07-25',
  'Burglary',
  '457',
  'ATM tampering attempt in Red Hills; alarm triggered.',
  'Red Hills',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.13,
  80.22,
  'property',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-23-0367',
  '2023-08-08',
  'Theft',
  '380',
  'Cash bag stolen from devotee at Kapaleeshwarar Temple.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'property',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-23-0389',
  '2023-08-20',
  'Murder',
  '302 34',
  'Double murder in Sowcarpet due to business rivalry.',
  'Sowcarpet',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.09,
  80.28,
  'violent',
  'critical',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-23-0412',
  '2023-09-02',
  'Cyber Fraud',
  '420',
  'Deepfake video call of ''friend'' asking for emergency money.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'cyber',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-23-0434',
  '2023-09-15',
  'Robbery',
  '392',
  'Petrol bunk staff robbed of collection bag in Poonamallee.',
  'Poonamallee',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.05,
  80.1,
  'property',
  'high',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-23-0456',
  '2023-09-28',
  'Assault',
  '324',
  'Dispute at construction site in Perumbakkam; supervisor attacked.',
  'Perumbakkam',
  'Chennai',
  'Tamil Nadu',
  'India',
  12.91,
  80.19,
  'violent',
  'high',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-23-0478',
  '2023-10-10',
  'Women Safety',
  '354D',
  'Online harassment; morphed photos used to blackmail student.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'other',
  'low',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-23-0501',
  '2023-10-22',
  'Cheating',
  '420',
  'MLM scam busted in Vadapalani; 5 arrested for defrauding public.',
  'Vadapalani',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.052,
  80.22,
  'property',
  'low',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-23-0523',
  '2023-11-05',
  'Narcotics',
  'NDPS Act',
  'Methamphetamine seizure worth Γé╣10 lakh in Phoenix Mall area.',
  'Phoenix',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0109,
  80.229,
  'other',
  'low',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-23-0545',
  '2023-11-18',
  'Cyber Fraud',
  'IT Act 66D',
  'Stock market trading scam; victim added to WhatsApp group and duped.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'cyber',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-23-0567',
  '2023-12-01',
  'Theft',
  '379',
  'Helmet and mirrors stolen from superbike in Besant Nagar.',
  'T Nagar',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0418,
  80.2341,
  'property',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-23-0589',
  '2023-12-14',
  'Burglary',
  '454 380',
  'Locked house in Adambakkam broken into; silver items stolen.',
  'Adambakkam',
  'Chennai',
  'Tamil Nadu',
  'India',
  12.97,
  80.2,
  'property',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-23-0612',
  '2023-12-28',
  'Murder',
  '302',
  'Watchman found dead at site in Medavakkam; robbery suspected.',
  'Medavakkam',
  'Chennai',
  'Tamil Nadu',
  'India',
  12.92,
  80.18,
  'violent',
  'critical',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-0012',
  '2024-01-08',
  'Cyber Fraud',
  '420',
  'Digital Arrest scam; victim held on Skype call by fake ''CBI'' for 12 hours.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'cyber',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-0034',
  '2024-01-20',
  'Theft',
  '379',
  'Car stereo system stolen from vehicle parked in dark street in T. Nagar.',
  'T. Nagar',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0418,
  80.2341,
  'property',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-0056',
  '2024-02-02',
  'Assault',
  '323',
  'Road rage between food delivery agent and car driver in Anna Nagar.',
  'Anna Nagar',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0878,
  80.2088,
  'violent',
  'high',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-0078',
  '2024-02-15',
  'Robbery',
  '392',
  'Chain snatching by bike-borne duo in Valasaravakkam.',
  'Valasaravakkam',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.04,
  80.16,
  'property',
  'high',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-0101',
  '2024-03-01',
  'Women Safety',
  '354',
  'Complaint against cab driver for inappropriate behavior during night ride.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'other',
  'low',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-0123',
  '2024-03-14',
  'Cyber Fraud',
  'IT Act 66D',
  'AI Voice cloning scam; ''nephew in jail'' plea used to extract funds.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'cyber',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-0145',
  '2024-03-28',
  'Burglary',
  '457',
  'Electronic shop shutter broken in Tambaram; mobiles stolen.',
  'Tambaram',
  'Chennai',
  'Tamil Nadu',
  'India',
  12.9249,
  80.1,
  'property',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-0167',
  '2024-04-10',
  'Murder',
  '302',
  'Drunken dispute ended in murder in Slum Clearance board tenement.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'violent',
  'critical',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-0189',
  '2024-04-22',
  'Cheating',
  '420',
  'Fake IPO allotment scam; investor lost Γé╣20 lakh.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'property',
  'low',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-0212',
  '2024-05-05',
  'Theft',
  '380',
  'Wallet pickpocketed on crowded MTC bus route 29C.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'property',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-0234',
  '2024-05-18',
  'Cyber Fraud',
  '420',
  'Fake ''arrest warrant'' email sent demanding crypto payment.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'cyber',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-0256',
  '2024-06-01',
  'Robbery',
  '392',
  'Woman walking dog threatened and robbed of chain in Adyar.',
  'Adyar',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0067,
  80.26,
  'property',
  'high',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-0278',
  '2024-06-14',
  'Assault',
  '324',
  'Clash over water tanker supply in apartment complex in OMR.',
  'OMR',
  'Chennai',
  'Tamil Nadu',
  'India',
  12.9141,
  80.227,
  'violent',
  'high',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-0301',
  '2024-06-28',
  'Women Safety',
  '509',
  'Stalking complaint filed by IT professional in Thoraipakkam.',
  'Thoraipakkam',
  'Chennai',
  'Tamil Nadu',
  'India',
  12.9141,
  80.227,
  'other',
  'low',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-0323',
  '2024-07-10',
  'Cyber Fraud',
  'IT Act 66C',
  'Gaming app fraud; minor used parents'' card for Γé╣2 lakh purchases.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'cyber',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-0345',
  '2024-07-22',
  'Burglary',
  '454',
  'House break-in at Madhavaram; fingerprints lifted from scene.',
  'Madhavaram',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.125,
  80.21,
  'property',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-0367',
  '2024-08-05',
  'Theft',
  '379',
  'Bicycle theft from metro station parking in Alandur.',
  'Alandur',
  'Chennai',
  'Tamil Nadu',
  'India',
  12.98,
  80.2,
  'property',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-0389',
  '2024-08-18',
  'Murder',
  '302',
  'Man stabbed near TASMAC in Korattur late night.',
  'Korattur',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.105,
  80.2,
  'violent',
  'critical',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-0412',
  '2024-09-01',
  'Cyber Fraud',
  '420',
  'Fake apartment rental listing on Facebook; deposit stolen.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'cyber',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-0434',
  '2024-09-14',
  'Robbery',
  '397',
  'Knife-point robbery of a couple on beach service road.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'property',
  'high',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-0456',
  '2024-09-28',
  'Assault',
  '323',
  'Altercation at a petrol bunk over queue jumping in Saidapet.',
  'Saidapet',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.02,
  80.22,
  'violent',
  'high',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-0478',
  '2024-10-10',
  'Cheating',
  '406',
  'Gold loan fraud; fake jewellery pledged in bank in Mylapore.',
  'Mylapore',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0339,
  80.2676,
  'property',
  'low',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-0501',
  '2024-10-25',
  'Women Safety',
  '498A',
  'Dowry harassment case registered in Ambattur AWPS.',
  'Ambattur',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.095,
  80.19,
  'other',
  'low',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-0523',
  '2024-11-08',
  'Cyber Fraud',
  'IT Act 66D',
  'Sextortion scam; victim blackmailed after video call recording.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'cyber',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-0545',
  '2024-11-20',
  'Theft',
  '379',
  'Spare tyre stolen from SUV parked in T. Nagar.',
  'T. Nagar',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0418,
  80.2341,
  'property',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-0567',
  '2024-12-05',
  'Burglary',
  '457 380',
  'Godown broken into in Manali; copper scraps stolen.',
  'Manali',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.14,
  80.25,
  'property',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-0589',
  '2024-12-15',
  'Murder',
  '302',
  'Body found in bushes near Mudichur; investigation underway.',
  'Mudichur',
  'Chennai',
  'Tamil Nadu',
  'India',
  12.93,
  80.15,
  'violent',
  'critical',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-0612',
  '2024-12-28',
  'Cyber Fraud',
  '420',
  'QR code scam at a tea shop; customer tricked into paying twice.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'cyber',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-21-0655',
  '2021-01-10',
  'Theft',
  '379',
  'Flower pots stolen from outside residence in Boat Club area.',
  'Boat Club',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.01,
  80.27,
  'property',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-21-0689',
  '2021-02-12',
  'Assault',
  '323',
  'Scuffle between shopkeepers in Parry''s Corner.',
  'Parry',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.085,
  80.275,
  'violent',
  'high',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-21-0712',
  '2021-03-08',
  'Cyber Fraud',
  '420',
  'OLX scam selling fake camera lens; buyer duped.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'cyber',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-21-0734',
  '2021-04-14',
  'Robbery',
  '392',
  'Bag snatching from auto passenger in Egmore.',
  'Egmore',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.08,
  80.26,
  'property',
  'high',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-21-0756',
  '2021-05-20',
  'Women Safety',
  '354',
  'Harassment reported in park in Anna Nagar.',
  'Anna Nagar',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0878,
  80.2088,
  'other',
  'low',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-21-0778',
  '2021-06-25',
  'Burglary',
  '454',
  'Window grills cut and house entered in Villivakkam.',
  'Villivakkam',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.11,
  80.2,
  'property',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-21-0801',
  '2021-07-30',
  'Cyber Fraud',
  'IT Act 66C',
  'Facebook account cloning; requests for money sent to family.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'cyber',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-21-0823',
  '2021-08-18',
  'Theft',
  '379',
  'Manhole cover stolen from street in Royapettah.',
  'Royapettah',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.04,
  80.26,
  'property',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-21-0845',
  '2021-09-25',
  'Murder',
  '302',
  'Drunken brawl ending in death in Kasimedu fishing harbour.',
  'Kasimedu',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.12,
  80.3,
  'violent',
  'critical',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-21-0867',
  '2021-10-12',
  'Cheating',
  '420',
  'Fake gold coin sold to pawnbroker in Sowcarpet.',
  'Sowcarpet',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.09,
  80.28,
  'property',
  'low',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-21-0889',
  '2021-11-08',
  'Assault',
  '324',
  'Neighbors fighting over boundary wall in Pallavaram.',
  'Pallavaram',
  'Chennai',
  'Tamil Nadu',
  'India',
  12.97,
  80.15,
  'violent',
  'high',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-21-0912',
  '2021-12-15',
  'Robbery',
  '397',
  'Mobile snatched at knife point near Central Station.',
  'Central',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'property',
  'high',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-22-0634',
  '2022-01-15',
  'Cyber Fraud',
  '420',
  'Paytm KYC scam call; victim shared OTP.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'cyber',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-22-0656',
  '2022-02-10',
  'Theft',
  '380',
  'Shoes stolen from temple entrance in Triplicane.',
  'Triplicane',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.055,
  80.27,
  'property',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-22-0678',
  '2022-03-05',
  'Women Safety',
  '509',
  'Verbal abuse of woman driver in traffic in Nungambakkam.',
  'Nungambakkam',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.06,
  80.24,
  'other',
  'low',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-22-0701',
  '2022-04-18',
  'Burglary',
  '457',
  'Medical shop broken into; cash register emptied.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'property',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-22-0723',
  '2022-05-12',
  'Assault',
  '307',
  'Gang attack in North Chennai; victim critical.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'violent',
  'high',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-22-0745',
  '2022-06-25',
  'Cyber Fraud',
  'IT Act 66D',
  'Loan app agent harassment reported in Guindy.',
  'Guindy',
  'Chennai',
  'Tamil Nadu',
  'India',
  12.99,
  80.22,
  'cyber',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-22-0767',
  '2022-07-20',
  'Robbery',
  '392',
  'Chain snatching in early morning in Velachery.',
  'Velachery',
  'Chennai',
  'Tamil Nadu',
  'India',
  12.981,
  80.2209,
  'property',
  'high',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-22-0789',
  '2022-08-15',
  'Cheating',
  '406',
  'Money collected for chit fund and organizer fled.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'property',
  'low',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-22-0812',
  '2022-09-10',
  'Murder',
  '302',
  'Wife murdered husband over illicit affair suspicion.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'violent',
  'critical',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-22-0834',
  '2022-10-05',
  'Theft',
  '379',
  'Bicycle stolen from tuition center in West Mambalam.',
  'West Mambalam',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.035,
  80.23,
  'property',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-22-0856',
  '2022-11-20',
  'Cyber Fraud',
  '420',
  'Investment scam promising double returns in 1 month.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'cyber',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-22-0878',
  '2022-12-12',
  'Women Safety',
  '498A',
  'Domestic violence complaint in Chetpet.',
  'Chetpet',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.07,
  80.245,
  'other',
  'low',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-23-0634',
  '2023-01-10',
  'Assault',
  '323',
  'Road rage between biker and bus driver.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'violent',
  'high',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-23-0656',
  '2023-02-14',
  'Burglary',
  '454',
  'Locked flat in Virugambakkam burgled.',
  'Virugambakkam',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.055,
  80.18,
  'property',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-23-0678',
  '2023-03-20',
  'Cyber Fraud',
  'IT Act 66C',
  'Credit card skimmed at petrol pump.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'cyber',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-23-0701',
  '2023-04-25',
  'Robbery',
  '392',
  'Phone snatching from jogger in Bessy Beach.',
  'Bessy Beach',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.003,
  80.265,
  'property',
  'high',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-23-0723',
  '2023-05-30',
  'Theft',
  '379',
  'Laptop stolen from coffee shop table in Alwarpet.',
  'Alwarpet',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.03,
  80.255,
  'property',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-23-0745',
  '2023-06-12',
  'Murder',
  '302',
  'Gang war victim found dead in Vyasarpadi.',
  'Vyasarpadi',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.108,
  80.25,
  'violent',
  'critical',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-23-0767',
  '2023-07-18',
  'Cheating',
  '420',
  'Fake overseas job offer; money paid for visa.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'property',
  'low',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-23-0789',
  '2023-08-22',
  'Cyber Fraud',
  '420',
  'AePS fraud; biometric data misused.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'cyber',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-23-0812',
  '2023-09-15',
  'Women Safety',
  '354D',
  'Stalking by former colleague reported.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'other',
  'low',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-23-0834',
  '2023-10-08',
  'Assault',
  '324',
  'Drunken fight outside bar in T. Nagar.',
  'T. Nagar',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0418,
  80.2341,
  'violent',
  'high',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-23-0856',
  '2023-11-12',
  'Burglary',
  '457 380',
  'Jewellery shop wall drilled in Perambur.',
  'Perambur',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.115,
  80.24,
  'property',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-23-0878',
  '2023-12-20',
  'Robbery',
  '397',
  'Knife point robbery in subway near Central.',
  'Central',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'property',
  'high',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-0634',
  '2024-01-15',
  'Cyber Fraud',
  'IT Act 66D',
  'Digital Arrest scam; victim isolated for 6 hours.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'cyber',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-0656',
  '2024-02-10',
  'Theft',
  '379',
  'Car logo badges stolen in upscale area.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'property',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-0678',
  '2024-03-05',
  'Murder',
  '302',
  'Dispute over property led to murder in family.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'violent',
  'critical',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-0701',
  '2024-04-12',
  'Women Safety',
  '354',
  'Molestation in public bus reported.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'other',
  'low',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-0723',
  '2024-05-18',
  'Assault',
  '323',
  'Fight over parking in apartment complex.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'violent',
  'high',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-0745',
  '2024-06-22',
  'Cheating',
  '420',
  'Online trading scam; victim lost life savings.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'property',
  'low',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-0767',
  '2024-07-15',
  'Robbery',
  '392',
  'Chain snatching from pillion rider.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'property',
  'high',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-0789',
  '2024-08-10',
  'Burglary',
  '454',
  'Daytime break-in at teacher''s house.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'property',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-0812',
  '2024-09-05',
  'Cyber Fraud',
  '420',
  'Deepfake voice scam of relative in trouble.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'cyber',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-0834',
  '2024-10-18',
  'Theft',
  '380',
  'Phone stolen from bag in market.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'property',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-0856',
  '2024-11-25',
  'Assault',
  '307',
  'Stabbing incident during festival procession.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'violent',
  'high',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-0878',
  '2024-12-10',
  'Women Safety',
  '509',
  'Harassment on social media reported.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'other',
  'low',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-0901',
  '2024-12-22',
  'Narcotics',
  'NDPS Act',
  'Ganja peddling near school; arrest made.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'other',
  'low',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-21-0955',
  '2021-01-05',
  'Theft',
  '379',
  'Battery stolen from truck parked on highway.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'property',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-21-0988',
  '2021-02-22',
  'Assault',
  '323',
  'Scuffle over ticket queue at cinema.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'violent',
  'high',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-21-1012',
  '2021-03-15',
  'Cyber Fraud',
  '420',
  'Fake charity for covid relief; money collected.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'cyber',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-21-1034',
  '2021-04-10',
  'Robbery',
  '392',
  'Bag snatching in dark street in Kilpauk.',
  'Kilpauk',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.075,
  80.24,
  'property',
  'high',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-21-1056',
  '2021-05-18',
  'Women Safety',
  '354',
  'Inappropriate touch in crowded market.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'other',
  'low',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-21-1078',
  '2021-06-12',
  'Burglary',
  '457',
  'Office broken into; laptops stolen.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'property',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-21-1101',
  '2021-07-25',
  'Cheating',
  '420',
  'Fake insurance policy sold to elderly.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'property',
  'low',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-21-1123',
  '2021-08-14',
  'Murder',
  '302',
  'Drunken brawl near wine shop.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'violent',
  'critical',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-21-1145',
  '2021-09-05',
  'Cyber Fraud',
  'IT Act 66C',
  'Email account compromised; spam sent.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'cyber',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-21-1167',
  '2021-10-20',
  'Theft',
  '379',
  'Cycle stolen from park entrance.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'property',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-21-1189',
  '2021-11-15',
  'Assault',
  '324',
  'Fight between students of rival colleges.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'violent',
  'high',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-21-1212',
  '2021-12-08',
  'Robbery',
  '397',
  'Threatened with knife for wallet.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'property',
  'high',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-22-0901',
  '2022-01-12',
  'Cyber Fraud',
  '420',
  'Job scam; data entry work fraud.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'cyber',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-22-0923',
  '2022-02-25',
  'Women Safety',
  '498A',
  'Dowry demand by in-laws.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'other',
  'low',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-22-0945',
  '2022-03-18',
  'Burglary',
  '454',
  'House break-in; TV and cash stolen.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'property',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-22-0967',
  '2022-04-10',
  'Theft',
  '379',
  'Car mirror stolen in Adyar.',
  'Adyar',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0067,
  80.26,
  'property',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-22-0989',
  '2022-05-22',
  'Assault',
  '323',
  'Road rage incident in traffic.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'violent',
  'high',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-22-1012',
  '2022-06-15',
  'Murder',
  '302',
  'Found dead in suspicious circumstances.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'violent',
  'critical',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-22-1034',
  '2022-07-08',
  'Cyber Fraud',
  'IT Act 66D',
  'Loan app blackmail reported.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'cyber',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-22-1056',
  '2022-08-20',
  'Robbery',
  '392',
  'Chain snatching in T. Nagar.',
  'T. Nagar',
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0418,
  80.2341,
  'property',
  'high',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-22-1078',
  '2022-09-12',
  'Cheating',
  '406',
  'Chit fund fraud.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'property',
  'low',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-22-1101',
  '2022-10-25',
  'Women Safety',
  '509',
  'Verbal harassment in public place.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'other',
  'low',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-22-1123',
  '2022-11-14',
  'Theft',
  '380',
  'Phone stolen from pocket in bus.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'property',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-22-1145',
  '2022-12-05',
  'Cyber Fraud',
  '420',
  'Online shopping scam; stone delivered.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'cyber',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-23-0901',
  '2023-01-15',
  'Assault',
  '324',
  'Attacked with sharp object in fight.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'violent',
  'high',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-23-0923',
  '2023-02-20',
  'Burglary',
  '457',
  'Shop shutter broken; cash stolen.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'property',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-23-0945',
  '2023-03-10',
  'Cyber Fraud',
  'IT Act 66C',
  'Card skimming at ATM.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'cyber',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-23-0967',
  '2023-04-15',
  'Robbery',
  '397',
  'Armed robbery attempt in house.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'property',
  'high',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-23-0989',
  '2023-05-22',
  'Women Safety',
  '354D',
  'Stalking by stranger.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'other',
  'low',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-23-1012',
  '2023-06-08',
  'Murder',
  '302',
  'Killed over financial dispute.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'violent',
  'critical',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-23-1034',
  '2023-07-20',
  'Theft',
  '379',
  'Motorbike theft from street.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'property',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-23-1056',
  '2023-08-12',
  'Cheating',
  '420',
  'Land fraud; double registration.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'property',
  'low',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-23-1078',
  '2023-09-25',
  'Cyber Fraud',
  '420',
  'AePS unauthorized withdrawal.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'cyber',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-23-1101',
  '2023-10-18',
  'Assault',
  '323',
  'Fight in restaurant over bill.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'violent',
  'high',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-23-1123',
  '2023-11-05',
  'Burglary',
  '454',
  'Flat break-in; jewels stolen.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'property',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-23-1145',
  '2023-12-10',
  'Robbery',
  '392',
  'Phone snatching on bike.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'property',
  'high',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-0923',
  '2024-01-20',
  'Cyber Fraud',
  'IT Act 66D',
  'Digital Arrest scam; money paid.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'cyber',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-0945',
  '2024-02-15',
  'Theft',
  '380',
  'Bag stolen in train.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'property',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-0967',
  '2024-03-10',
  'Women Safety',
  '354',
  'Molestation complaint in mall.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'other',
  'low',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-0989',
  '2024-04-22',
  'Assault',
  '307',
  'Stabbing during argument.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'violent',
  'high',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-1012',
  '2024-05-15',
  'Murder',
  '302',
  'Body found near lake.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'violent',
  'critical',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-1034',
  '2024-06-08',
  'Cyber Fraud',
  '420',
  'AI voice scam of relative.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'cyber',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-1056',
  '2024-07-20',
  'Robbery',
  '397',
  'Knife point robbery on road.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'property',
  'high',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-1078',
  '2024-08-12',
  'Burglary',
  '457',
  'ATM break-in attempt.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'property',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-1101',
  '2024-09-25',
  'Cheating',
  '420',
  'Investment app scam.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'property',
  'low',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-1123',
  '2024-10-10',
  'Theft',
  '379',
  'Scooter stolen from parking.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'property',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-1145',
  '2024-11-15',
  'Women Safety',
  '498A',
  'Harassment for dowry.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'other',
  'low',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-1167',
  '2024-12-05',
  'Cyber Fraud',
  'IT Act 66C',
  'Social media hack.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'cyber',
  'medium',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

INSERT INTO crimes (
  case_id, incident_date, category, ipc_sections, description,
  locality, district, region, country,
  lat, lng,
  crime_type, severity,
  data_source
) VALUES (
  'CH-24-1189',
  '2024-12-20',
  'Assault',
  '323',
  'Road rage fight.',
  NULL,
  'Chennai',
  'Tamil Nadu',
  'India',
  13.0827,
  80.2707,
  'violent',
  'high',
  'csv_import'
) ON CONFLICT (case_id) DO NOTHING;

COMMIT;

-- Update place_id links based on proximity
-- This will be done in a separate script
