# SafeSpot: Location Safety Intelligence Platform
## Professional Project Report

---

## 1. Project Overview

### What is SafeSpot?

SafeSpot is a comprehensive location safety intelligence platform that empowers users to make informed decisions about their travel and daily commutes by providing real-time safety ratings, historical crime data, and community-driven insights for any location. The application combines interactive mapping technology with sophisticated safety analytics to deliver actionable intelligence about the safety profile of neighborhoods, streets, and public spaces.

### Target Audience

SafeSpot is designed for:

- **Travelers and Tourists**: Planning visits to unfamiliar cities and neighborhoods
- **Daily Commuters**: Evaluating route safety for work or school
- **Parents**: Assessing safety of areas where children spend time
- **Real Estate Seekers**: Making informed decisions about neighborhoods
- **Event Planners**: Choosing safe venues for gatherings
- **Urban Planners**: Analyzing safety trends across districts
- **Women and Vulnerable Groups**: Identifying safer routes and areas, especially at night

### Problem Statement

Traditional map applications focus on navigation and points of interest but lack critical safety intelligence. Users face several challenges:

- **Information Fragmentation**: Crime data is scattered across news reports, police databases, and social media
- **Lack of Context**: Raw crime statistics don't translate to actionable safety insights
- **No Real-Time Intelligence**: Historical data doesn't reflect current safety conditions
- **Limited Accessibility**: Official crime databases are often technical and difficult to interpret
- **Missing Community Input**: User experiences and local knowledge aren't integrated with official data
- **No Comparative Analysis**: Difficult to compare safety across different locations

SafeSpot addresses these gaps by aggregating multiple data sources, computing comprehensive safety scores, and presenting information through an intuitive, map-based interface.

### Key Features

#### Interactive Safety Map
- Visual representation of safety ratings across geographic areas
- Color-coded markers indicating safety levels (green = safe, red = caution)
- Cluster visualization for high-density areas
- Smooth zoom and pan controls
- Location search and autocomplete

#### Comprehensive Safety Scores
- Multi-dimensional safety rating system (0-100 scale)
- Context-specific scores: night safety, women's safety, tourist safety
- Historical trend analysis
- Comparative rankings between locations

#### Community Reviews and Insights
- User-generated safety reviews with verification badges
- Incident reporting with categorization
- Helpful vote system for quality content
- Time-stamped reviews showing recent experiences

#### Safety Analytics Dashboard
- Crime type breakdown (violent, property, accidents)
- Temporal patterns (time of day, day of week)
- Safety infrastructure metrics (police density, CCTV coverage, lighting)
- Trend indicators (improving, stable, declining)

#### Automated Data Ingestion
- PDF parsing of news reports and police bulletins
- AI-powered incident extraction and classification
- Automatic coordinate mapping
- Continuous database updates

#### Comparison Tools
- Side-by-side location comparison
- Historical score evolution charts
- Safety attribute radar charts

### Why Safety Intelligence Matters

**Pre-Visit Safety Assessment** is crucial because:

1. **Prevention over Reaction**: Knowing risks beforehand allows route planning and precaution-taking
2. **Time-Sensitive Decision Making**: Safety conditions change based on time of day and events
3. **Informed Risk Assessment**: Not all areas with incidents are equally dangerous; context matters
4. **Empowerment**: Knowledge reduces anxiety and enables confident exploration
5. **Resource Optimization**: Security personnel and law enforcement can allocate resources effectively
6. **Community Awareness**: Transparent data drives community action and improvements
7. **Economic Impact**: Tourism and business investment depend on perceived safety

---

## 2. Technology Stack Overview

### Frontend Technologies

**Next.js 14 (React Framework)**
- Modern React framework with server-side rendering capabilities
- App Router architecture for enhanced routing and layouts
- API routes for serverless backend functions
- Optimized image loading and font management
- Built-in TypeScript support for type safety

**Leaflet (Interactive Mapping Library)**
- Lightweight, open-source mapping solution
- Highly customizable marker clustering
- Tile layer integration with OpenStreetMap
- Mobile-responsive touch controls
- Plugin ecosystem for extended functionality

**React Leaflet**
- React bindings for Leaflet
- Component-based map element management
- Declarative map configuration
- Seamless integration with React state and lifecycle

**TypeScript**
- Static type checking for enhanced code quality
- Improved developer experience with IntelliSense
- Reduced runtime errors through compile-time validation
- Better code documentation and maintainability

**Tailwind CSS**
- Utility-first CSS framework
- Responsive design primitives
- Consistent design system
- Minimal CSS bundle size through purging

**Shadcn/UI Components**
- Accessible component library built on Radix UI
- Customizable design tokens
- Pre-built forms, dialogs, and navigation components
- Dark mode support

### Backend Technologies

**Python 3.10+**
- Backend scripting for data processing
- PDF parsing and text extraction
- Integration with AI models for data analysis

**Google Generative AI (Gemini)**
- Advanced natural language processing for incident extraction
- JSON-structured output for consistent data parsing
- Context-aware classification of crime and safety events
- Retry logic and fallback mechanisms for reliability

**Supabase (Backend-as-a-Service)**
- PostgreSQL database with real-time capabilities
- Row-level security for data protection
- Built-in authentication and authorization
- RESTful API auto-generation
- Database migrations and version control

**PostgreSQL Extensions**
- UUID generation for unique identifiers
- Geospatial extensions for coordinate-based queries
- Full-text search capabilities
- JSON data type support

### Data Processing Libraries

**PDFPlumber**
- Text extraction from PDF documents
- Table and layout detection
- Multi-page document processing
- Character-level positioning data

**Pydantic**
- Data validation using Python type annotations
- JSON schema generation
- Automatic data parsing and serialization
- Clear error messages for invalid data

### Development Tools

**Git (Version Control)**
- Source code management
- Branch-based development workflow
- Collaboration and code review

**npm/pip (Package Managers)**
- Dependency management for JavaScript and Python
- Version locking for reproducible builds

**ESLint and Prettier**
- Code quality enforcement
- Consistent code formatting
- Automated linting in development

### Hosting and Deployment

**Vercel (Frontend Hosting)**
- Automatic deployments from Git
- Global CDN for fast content delivery
- Serverless function execution
- Preview deployments for pull requests

**Supabase Cloud (Database Hosting)**
- Managed PostgreSQL instances
- Automatic backups and point-in-time recovery
- Connection pooling for scalability
- Built-in monitoring and logs

---

## 3. System Architecture

### High-Level Architecture Overview

SafeSpot follows a modern three-tier architecture with clear separation of concerns:

**Presentation Layer (Client)**
- User interface rendered in web browsers
- Interactive map components and data visualizations
- State management for local data caching
- API client for backend communication

**Application Layer (Backend Services)**
- RESTful API endpoints for data operations
- Business logic for safety score calculations
- Authentication and authorization middleware
- Data transformation and aggregation

**Data Layer (Database)**
- Persistent storage of places, reviews, and analytics
- Relational data model with foreign key constraints
- Indexed queries for performance optimization
- Historical data retention for trend analysis

### Component Communication Flow

#### User Request Flow

1. **User Action**: User searches for a location or clicks on map
2. **Client Processing**: Frontend validates input and prepares API request
3. **API Call**: HTTP request sent to backend with authentication token
4. **Backend Processing**: Server validates request, queries database, computes derived data
5. **Database Query**: SQL queries retrieve relevant records with joins
6. **Response Formatting**: Data serialized to JSON with computed fields
7. **Client Rendering**: Frontend updates UI components with new data
8. **Map Update**: Map markers and overlays refresh with latest information

#### Data Ingestion Flow

1. **Source Document**: PDF newspaper report or police bulletin uploaded
2. **Text Extraction**: PDFPlumber extracts paragraphs and text blocks
3. **Relevance Filtering**: Keywords identify crime and safety-related content
4. **AI Analysis**: Gemini model classifies incidents and extracts locations
5. **Coordinate Mapping**: Location names matched to geographic coordinates
6. **Score Calculation**: Safety algorithm computes ratings based on incidents
7. **Database Insert**: New records created or existing records updated
8. **Timestamp Recording**: Data freshness tracked for confidence scoring

### Map-Backend Integration

**Initial Page Load**
- Frontend requests bounding box coordinates of visible map area
- Backend queries all places within geographic bounds
- Places returned with basic info (name, coordinates, safety score)
- Markers rendered on map with color coding

**User Interaction**
- Click on marker triggers detail request with place ID
- Backend retrieves full place record with all attributes
- Related data fetched (reviews, safety history, trends)
- Detail panel populates with comprehensive information

**Real-Time Updates**
- Map pan/zoom events trigger new bounding box queries
- Debouncing prevents excessive API calls during rapid movement
- Only newly visible areas are requested (delta loading)
- Marker clustering dynamically adjusts based on zoom level

### Safety Score Computation Engine

**Computation Pipeline**

1. **Data Collection**: Gather all incidents and positive events for location
2. **Categorization**: Classify each incident by type (violent, property, accident, etc.)
3. **Penalty/Bonus Assignment**: Apply weighted deductions or additions
4. **Base Score Adjustment**: Start from base value and apply modifications
5. **Normalization**: Clamp final score to valid range
6. **Context Scores**: Compute specialized scores (night, women, tourist safety)
7. **Confidence Calculation**: Assess data quality and recency
8. **Persistence**: Store computed scores with timestamp

**Real-Time Recalculation**
- Triggered when new incidents are added
- Background jobs process batch updates
- Historical scores preserved for trend analysis
- Version tracking ensures audit trail

### Security Architecture

**Authentication**
- User accounts managed through Supabase Auth
- JWT tokens for session management
- Secure password hashing with bcrypt

**Authorization**
- Row-level security policies in database
- Users can only modify their own reviews
- Admin roles for content moderation
- API key protection for external integrations

**Data Protection**
- HTTPS encryption for all communications
- Environment variables for sensitive credentials
- SQL injection prevention through parameterized queries
- Input validation and sanitization

---

## 4. Safety Scoring Algorithm Explanation

### Core Principle

The safety scoring system is designed to provide an intuitive, normalized metric (0-100 scale) that reflects the relative safety of a location based on multiple factors. Higher scores indicate safer locations.

### Base Score Methodology

Every location begins with a **base score of 100**, representing a perfectly safe location with no incidents. This score is then adjusted based on evidence:

**Negative Adjustments (Penalties)**
- Violent crimes have the highest impact on safety perception
- Property crimes indicate moderate risk
- Accidents suggest environmental hazards
- Public disturbances reflect social instability

**Positive Adjustments (Bonuses)**
- Police actions demonstrate law enforcement presence
- Safety measures indicate proactive risk mitigation
- Security infrastructure improves overall protection

### Incident Classification

Each incident extracted from data sources is classified into one of six categories:

1. **Violent Crime**: Murder, assault, stabbing, shooting, armed robbery
   - Highest penalty weight
   - Directly threatens personal safety

2. **Property Crime**: Theft, burglary, pickpocketing, chain snatching
   - Moderate penalty weight
   - Financial loss and personal violation

3. **Accident**: Traffic collisions, train derailments, structural collapses
   - Moderate penalty weight
   - Indicates environmental hazards

4. **Public Disturbance**: Protests, riots, vandalism, loud disturbances
   - Lower penalty weight
   - Temporary disruption rather than direct threat

5. **Police Action**: Arrests, raids, crackdowns, patrol increases
   - Bonus points
   - Indicates active law enforcement

6. **Safety Measure**: CCTV installation, lighting improvements, security posts
   - Bonus points
   - Proactive safety enhancement

### Score Calculation Formula

**Mathematical Representation:**

```
Initial Score = 100 (perfect safety baseline)

For each violent crime:
    Score = Score - 15

For each property crime:
    Score = Score - 10

For each accident:
    Score = Score - 8

For each public disturbance:
    Score = Score - 5

For each police action:
    Score = Score + 2

For each safety measure:
    Score = Score + 3

Final Score = max(0, min(100, Score))
```

The final clamping ensures scores remain within the valid 0-100 range.

### Context-Specific Scores

Beyond the general safety score, specialized metrics are computed for different user contexts:

**Night Safety Score**
- Emphasizes violent crime incidents occurring after sunset
- Considers lighting infrastructure quality
- Factors in police patrol density during night hours
- Accounts for isolation (fewer witnesses)

**Women's Safety Score**
- Heightened weighting for crimes targeting women
- Includes harassment and stalking incidents
- Considers safe spaces and well-lit areas
- Factors in community watch programs

**Tourist Safety Score**
- Focuses on crimes affecting visitors (pickpocketing, scams)
- Considers language barriers in emergency situations
- Accounts for tourist-heavy areas with higher vigilance
- Includes presence of tourist police

**Crowd Safety Score**
- Evaluates risk in high-density gatherings
- Considers stampede and panic risks
- Factors in emergency exit availability
- Accounts for event security presence

### Attribute Normalization

Raw incident counts are normalized to a consistent 0-100 scale for each safety attribute:

**Normalization Process**
- Count incidents in each category
- Apply scaling factor based on incident severity
- Cap at 100 to prevent outliers from skewing data
- Invert scale where appropriate (higher incidents = lower safety)

**Example Attributes:**
- **Violent Crime Index**: 0 = no violent crimes, 100 = extremely high violence
- **Police Density**: 0 = no police presence, 100 = very high patrols
- **CCTV Coverage**: 0 = no surveillance, 100 = comprehensive coverage

### Composite Score Weighting

The final safety score is a weighted composite of multiple attributes:

**Attribute Contributions:**
- Crime metrics: 40% of total score
- Safety infrastructure: 30% of total score
- Historical trends: 20% of total score
- Community reviews: 10% of total score

This ensures that multiple data sources contribute to the overall assessment, preventing over-reliance on any single metric.

### Trend Analysis

Safety scores are not static; they evolve over time. The system tracks:

**Temporal Patterns**
- Monthly snapshots of safety scores
- Year-over-year comparisons
- Seasonal variations
- Event-driven anomalies

**Trend Direction**
- **Improving**: Score increasing over past 6 months
- **Stable**: Score variance within 5 points
- **Declining**: Score decreasing over past 6 months

**Rate of Change**
- Gradual changes suggest systemic shifts
- Sudden drops indicate recent incidents requiring attention
- Rapid improvements reflect successful interventions

### Confidence Scoring

Not all safety scores are equally reliable. A confidence metric (0-100%) indicates data quality:

**Factors Affecting Confidence:**
- **Data Recency**: Fresh data (< 30 days) has higher confidence
- **Sample Size**: More incidents provide better statistical reliability
- **Source Diversity**: Multiple data sources increase confidence
- **Verification**: Official reports weighted higher than unverified claims

**Confidence Levels:**
- 80-100%: High confidence, comprehensive recent data
- 60-79%: Moderate confidence, adequate data coverage
- 40-59%: Low confidence, sparse or outdated data
- 0-39%: Very low confidence, insufficient information

### Algorithm Limitations and Considerations

**Known Limitations:**
- Depends on data availability and reporting rates
- Some areas have better crime reporting than others
- Recent incidents have disproportionate impact
- Doesn't account for personal risk tolerance
- Geographic boundaries are approximations

**Mitigation Strategies:**
- Clearly display confidence scores
- Encourage community reporting to fill gaps
- Apply time-decay to older incidents
- Provide context-specific recommendations
- Allow users to report data issues

---

## 5. Database Design

### Database Technology

The application uses **PostgreSQL**, a powerful open-source relational database, hosted on **Supabase Cloud**. PostgreSQL was chosen for its robust support of complex queries, JSON data types, geospatial operations, and strong consistency guarantees.

### Core Tables

#### Places Table

**Purpose**: Central registry of all locations being tracked

**Key Fields:**
- Unique identifier (UUID)
- Place name (e.g., "Anna Nagar", "Central Station")
- Geographic coordinates (latitude, longitude)
- Current safety score (0-100)
- Elo rating (comparison-based ranking)
- Popularity score (user engagement metric)
- Experience score (aggregated review ratings)
- Trend score (directional change indicator)
- Administrative metadata (locality, city, state, country)
- Timestamps (creation, last update, last score recalculation)

**Relationships:**
- One place has many safety attributes
- One place has many user reviews
- One place has many historical score snapshots
- One place can have many active safety alerts

#### Place Safety Attributes Table

**Purpose**: Detailed breakdown of safety metrics for each location

**Key Fields:**
- Foreign key to Places table
- Violent crime index (0-100, higher = more violent crime)
- Property crime index (0-100, higher = more property crime)
- Accident rate (0-100, higher = more accidents)
- Safety infrastructure score (CCTV, lighting, barriers)
- Police density metric (patrol frequency)
- CCTV coverage percentage
- Lighting quality score
- Night safety score (context-specific)
- Women's safety score (context-specific)
- Tourist safety score (context-specific)
- Crowd safety score (context-specific)
- Pickpocket risk level
- Data source identifier (manual, PDF extraction, API)
- Confidence score (data reliability)
- Data timestamp (freshness indicator)

**Relationships:**
- Many-to-one with Places (each place has one current attribute record)
- Historical versions tracked separately

#### Place Reviews Table

**Purpose**: User-generated content providing qualitative safety insights

**Key Fields:**
- Unique review identifier
- Foreign key to Places table
- Foreign key to Users table (reviewer)
- Safety rating (1-5 stars)
- Overall rating (1-5 stars, may differ from safety)
- Review text (free-form narrative)
- Visit date (when experience occurred)
- Visit context (solo, family, business, tourist)
- Time of day (morning, afternoon, evening, night)
- Tags array (keywords: "well-lit", "crowded", "isolated")
- Photos (attachments showing area conditions)
- Helpful votes (community endorsement count)
- Verified status (authenticated user with location proof)
- Report count (flagged for inappropriate content)
- Timestamps (creation, last update)

**Relationships:**
- Many-to-one with Places (one place has many reviews)
- Many-to-one with Users (one user writes many reviews)

#### Place Safety History Table

**Purpose**: Time-series data for trend analysis

**Key Fields:**
- Unique record identifier
- Foreign key to Places table
- Month/year (snapshot period)
- Safety score at that time
- Crime index aggregate
- Infrastructure index aggregate
- Review score average
- Incident count
- Trend value (numeric change from previous period)
- Trend direction (enum: improving, stable, declining)

**Relationships:**
- Many-to-one with Places (one place has many historical snapshots)
- Ordered by timestamp for chronological analysis

#### Users Table

**Purpose**: Account management for contributors and consumers

**Key Fields:**
- Unique user identifier (UUID)
- Email address (authentication)
- Username (display name)
- Role (admin, moderator, verified user, basic user)
- Account creation date
- Last login timestamp
- Profile metadata (avatar, bio, preferences)

**Relationships:**
- One user writes many reviews
- One user saves many places (watchlist)
- One user creates many comparisons

#### Saved Places Table

**Purpose**: User watchlists for monitoring specific locations

**Key Fields:**
- User identifier (foreign key)
- Place identifier (foreign key)
- Save timestamp
- Custom notes (user-written reminders)
- Alert preferences (notify on score changes)

**Relationships:**
- Many-to-many junction table between Users and Places

#### Safety Alerts Table

**Purpose**: Automated warnings for significant safety events

**Key Fields:**
- Alert identifier
- Foreign key to Places table
- Alert type (spike, decline, incident, infrastructure)
- Severity level (low, medium, high, critical)
- Alert title (brief headline)
- Alert message (detailed description)
- Previous score (before event)
- New score (after event)
- Active status (whether alert is still relevant)
- Expiration date (auto-dismissal)
- Creation timestamp

**Relationships:**
- Many-to-one with Places (one place can have multiple alerts)

#### Place Comparisons Table

**Purpose**: User-generated side-by-side location evaluations

**Key Fields:**
- Comparison identifier
- User identifier (creator)
- Array of place identifiers (locations being compared)
- Comparison title
- Comparison notes
- Creation timestamp

**Relationships:**
- Many-to-one with Users (one user creates many comparisons)
- Many-to-many with Places (each comparison includes multiple places)

#### Background Jobs Table

**Purpose**: Task management for automated data processing

**Key Fields:**
- Job identifier
- Job type (PDF ingestion, score recalculation, alert generation)
- Status (queued, running, completed, failed)
- Progress percentage
- Input parameters (JSON)
- Output result (JSON)
- Error message (if failed)
- Start time
- Completion time

**Relationships:**
- Independent table with no foreign keys
- Referenced by logs for audit trail

### Data Relationships Summary

**One-to-Many Relationships:**
- One Place → Many Safety Attributes (historical versions)
- One Place → Many Reviews
- One Place → Many History Snapshots
- One Place → Many Alerts
- One User → Many Reviews
- One User → Many Saved Places
- One User → Many Comparisons

**Many-to-Many Relationships:**
- Users ↔ Places (via Saved Places table)
- Comparisons ↔ Places (via junction)

### Indexing Strategy

**Primary Indexes:**
- UUID primary keys on all tables
- Foreign key indexes for join optimization

**Geographic Indexes:**
- Composite index on (latitude, longitude) for bounding box queries
- Spatial index for radius searches

**Performance Indexes:**
- Index on place name for search autocomplete
- Index on safety_score for ranking queries
- Composite index on (place_id, created_at) for historical queries
- Index on user_id for user-specific queries

### Data Integrity Constraints

**Referential Integrity:**
- Foreign key constraints with cascading deletes where appropriate
- Prevent orphaned records through database-level enforcement

**Domain Constraints:**
- Safety scores constrained to 0-100 range
- Ratings constrained to 1-5 stars
- Coordinates validated for geographic plausibility
- Enum fields restricted to predefined values

**Business Rules:**
- Users cannot review the same place multiple times per month
- Scores must be recalculated when new incidents are added
- Alerts auto-expire after 30 days unless refreshed

---

## 6. Installation Guide

### System Requirements

**Development Machine:**
- Operating System: Windows 10/11, macOS 10.15+, or Linux (Ubuntu 20.04+)
- RAM: Minimum 8GB (16GB recommended)
- Storage: 5GB free space for dependencies and codebase
- Internet connection for package downloads

**Software Prerequisites:**
- Node.js version 18 or higher (LTS recommended)
- Python version 3.10 or higher
- Git version control system
- Text editor or IDE (VS Code recommended)
- Web browser (Chrome, Firefox, or Edge)

### Step 1: Clone the Repository

Obtain the source code from the version control repository. Navigate to your desired project directory and clone the repository using Git. This will create a local copy of all project files.

### Step 2: Install Frontend Dependencies

Navigate to the frontend application directory (typically named "safespot" or similar). Use the Node Package Manager to install all required JavaScript libraries and frameworks. This process reads the package manifest file and downloads all dependencies listed, including React, Next.js, Leaflet, TypeScript, Tailwind CSS, and utility libraries.

The installation may take several minutes depending on internet speed. Once complete, a node_modules directory will contain all installed packages.

### Step 3: Install Backend Dependencies

Navigate to the root project directory containing Python scripts. Use the Python package installer to install required libraries. Key packages include:

- PDFPlumber for PDF text extraction
- Supabase client library for database operations
- Google Generative AI SDK for AI model access
- Pydantic for data validation
- Standard library dependencies

Consider creating a Python virtual environment before installation to isolate project dependencies from system-wide packages.

### Step 4: Configure Environment Variables

Create environment configuration files to store sensitive credentials and configuration settings.

**Frontend Environment File:**
Create a file named ".env.local" in the frontend directory with the following variables:

- NEXT_PUBLIC_SUPABASE_URL: Your Supabase project URL
- NEXT_PUBLIC_SUPABASE_ANON_KEY: Supabase anonymous/public key for client-side access
- SUPABASE_SERVICE_ROLE_KEY: Supabase service role key for server-side operations (keep secure)

**Backend Environment Variables:**
Set system environment variables or create a .env file in the root directory:

- SUPABASE_URL: Same as frontend Supabase URL
- SUPABASE_KEY: Supabase service role key
- GENAI_API_KEY: Google Generative AI API key for Gemini model access

**Obtaining Credentials:**

For Supabase:
1. Sign up at supabase.com
2. Create a new project
3. Navigate to project settings
4. Copy API URL and keys from the API section

For Google Generative AI:
1. Visit Google AI Studio
2. Create an API key
3. Copy the key for environment configuration

### Step 5: Database Setup

**Create Database Schema:**

1. Log into your Supabase dashboard
2. Navigate to the SQL Editor
3. Locate the schema.sql file in the project's database directory
4. Copy the SQL script contents
5. Paste into the SQL Editor
6. Execute the script to create all tables and relationships

The script will:
- Enable required PostgreSQL extensions
- Create all necessary tables
- Set up foreign key relationships
- Create indexes for performance
- Configure row-level security policies

**Verify Database Creation:**
Check the Table Editor in Supabase to confirm all tables exist:
- places
- place_safety_attributes
- place_reviews
- place_safety_history
- users
- saved_places
- safety_alerts
- place_comparisons
- background_jobs

### Step 6: Install Additional Tools (Optional)

**PostgreSQL Command Line Tools:**
If running database operations locally, install PostgreSQL client tools for advanced database management.

**Database GUI Clients:**
Consider installing tools like pgAdmin, DBeaver, or TablePlus for visual database exploration during development.

**API Testing Tools:**
Install Postman or similar tools for testing backend API endpoints during development.

### Step 7: Verify Installation

**Check Node Installation:**
Verify Node.js and npm are correctly installed by checking their versions. Both should return version numbers without errors.

**Check Python Installation:**
Verify Python and pip are correctly installed by checking their versions.

**Test Database Connection:**
Run a simple database connection test using the Supabase client library to ensure credentials are correct and the database is accessible.

**Verify Environment Variables:**
Create a simple script to print environment variable values (mask sensitive parts) to confirm they are loaded correctly.

### Common Installation Issues

**Node Module Installation Failures:**
- Clear npm cache and retry
- Delete node_modules and package-lock.json, then reinstall
- Check for file permission issues on Windows

**Python Package Conflicts:**
- Use a virtual environment to isolate dependencies
- Upgrade pip to the latest version
- Check for Python version compatibility

**Database Connection Errors:**
- Verify Supabase project is not paused (free tier)
- Check firewall settings allow database connections
- Confirm credentials are copied correctly without extra spaces
- Test internet connectivity

**Missing Environment Variables:**
- Ensure .env files are in the correct directories
- Check for typos in variable names
- Restart terminal/IDE after setting system variables
- Verify .env.local is not in .gitignore for local development

---

## 7. How to Run the Project

### Development Mode

#### Starting the Frontend Application

Navigate to the frontend application directory using your terminal. Use the package manager to execute the development script defined in the package configuration file. This will:

- Compile TypeScript files
- Start the Next.js development server
- Enable hot module replacement for instant updates
- Start the server on the default port (typically port 3000)

Open your web browser and navigate to localhost on the specified port. The application should load with the interactive map visible. Any code changes you make will automatically reflect in the browser without manual refresh.

#### Starting the Backend Services

For PDF ingestion and data processing, Python scripts are executed individually as needed rather than running a persistent server. Navigate to the root project directory where Python scripts are located. Execute the ingestion script with appropriate command-line arguments, such as the path to a PDF file to process.

The script will:
- Parse the PDF document
- Extract relevant crime and safety information
- Classify incidents using AI
- Compute safety scores
- Insert data into the database
- Output progress information and results

### Running Database Migrations

If database schema changes are made during development, migrations must be applied to update the database structure.

For Supabase projects, schema changes are typically applied through the SQL Editor in the Supabase dashboard. Open the migration file containing SQL commands and execute it in the SQL Editor. This ensures all team members and deployment environments have consistent database structures.

### Testing the Application

**Frontend Testing:**

Navigate to the map interface and verify:
- Map loads with visible tiles
- Markers appear at correct locations
- Clicking markers opens detail panels
- Search functionality returns results
- Filtering options modify visible markers

**Backend Testing:**

Test the PDF ingestion pipeline:
- Prepare a sample PDF with crime news
- Execute the ingestion script
- Verify console output shows extracted data
- Check database tables for new records
- Confirm safety scores are calculated

**Database Query Testing:**

Use the Supabase dashboard or a database client to:
- Verify data was inserted correctly
- Run sample queries to retrieve places
- Check foreign key relationships are intact
- Confirm indexes are being used for performance

### Building for Production

When ready to deploy, create optimized production builds of the application.

**Frontend Build Process:**

Execute the build script from the package manager. This will:
- Compile all TypeScript to JavaScript
- Optimize and minify CSS
- Bundle JavaScript modules
- Generate static assets
- Create optimized images
- Output production-ready files

The build output will be placed in a designated directory (typically ".next" or "out"). These files are ready for deployment to a hosting platform.

**Environment Configuration for Production:**

Ensure production environment variables are set in the hosting platform:
- Database connection strings point to production database
- API keys are production keys (not development keys)
- Public URLs are configured correctly
- Security settings are enabled

### Deployment

**Frontend Deployment to Vercel:**

1. Connect your Git repository to Vercel
2. Configure build settings (framework preset: Next.js)
3. Add environment variables in Vercel dashboard
4. Trigger initial deployment
5. Verify application loads at assigned domain
6. Configure custom domain if desired

**Database Deployment:**

Supabase projects are already cloud-hosted, so no additional deployment is needed. Ensure:
- Production credentials are secured
- Connection pooling is enabled for scalability
- Automatic backups are configured
- Monitoring alerts are set up

**Backend Script Execution:**

Python scripts for data ingestion can be executed through:
- Scheduled tasks using cron jobs
- Cloud functions (AWS Lambda, Google Cloud Functions)
- Containerized services (Docker on Railway, Render)
- Manual execution for ad-hoc processing

### Accessing the Application

**Local Development:**
Open your browser and navigate to localhost on port 3000 (or the port specified in console output).

**Production:**
Access the application via the production URL provided by your hosting platform.

### Development Workflow

**Typical Development Session:**

1. Start the frontend development server
2. Open project in code editor
3. Make code changes to components or pages
4. View changes instantly in browser via hot reload
5. Test functionality manually
6. Commit changes to version control
7. Push to repository to trigger preview deployments

**Adding New Features:**

1. Plan database schema changes if needed
2. Write and test migration scripts
3. Implement backend data processing
4. Create or modify frontend components
5. Test integration end-to-end
6. Document new functionality
7. Deploy to production

### Monitoring and Maintenance

**Development Monitoring:**
- Watch console output for errors and warnings
- Use browser developer tools to inspect network requests
- Check database logs in Supabase dashboard
- Monitor API response times

**Production Monitoring:**
- Review Vercel deployment logs for frontend issues
- Check Supabase monitoring dashboard for database performance
- Set up error tracking (Sentry or similar)
- Configure uptime monitoring (Pingdom or similar)
- Review analytics to understand user behavior

### Troubleshooting Common Runtime Issues

**Map Not Loading:**
- Verify Leaflet CSS is imported correctly
- Check browser console for JavaScript errors
- Confirm tile server is accessible
- Validate map container has defined height in CSS

**Database Connection Failures:**
- Verify environment variables are loaded
- Check Supabase project is active (not paused)
- Confirm network allows database connections
- Validate connection string format

**PDF Ingestion Errors:**
- Ensure PDF is not encrypted or password-protected
- Verify AI API key is valid and has quota remaining
- Check Python dependencies are installed correctly
- Review console output for specific error messages

**Performance Issues:**
- Check database query performance using Supabase performance tab
- Verify indexes are created on frequently queried columns
- Monitor frontend bundle size for excessive bloat
- Consider implementing caching for expensive computations

### Continuous Integration

For automated testing and deployment:
- Configure CI/CD pipelines in GitHub Actions or similar
- Run automated tests on each commit
- Generate preview deployments for pull requests
- Automatically deploy main branch to production
- Run database migration checks before deployment

---

## Conclusion

SafeSpot represents a comprehensive approach to democratizing safety intelligence through modern web technologies and data-driven insights. By combining automated data ingestion, sophisticated scoring algorithms, and an intuitive user interface, the platform empowers users to make informed decisions about their safety.

The modular architecture ensures scalability, maintainability, and extensibility for future enhancements such as mobile applications, real-time alerting systems, and expanded geographic coverage.

---

**Project Status**: Active Development  
**Version**: 1.0  
**Last Updated**: November 2025  
**Repository**: github.com/Zerko-sd/Voyage  
**Documentation**: Comprehensive guides available in project repository
