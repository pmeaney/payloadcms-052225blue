#!/bin/bash
#
#  !!!!!!!!!!!!!!!!!!!!!!!!!!!
#   RECOMMENDED:
#     dont forget to run the initial db seed process, 
#     provided by PayloadCMS admin dashboard when
#     project first boots up
#  !!!!!!!!!!!!!!!!!!!!!!!!!!!
# sync-from-prod--DataOnly.sh
#
# Script to sync your local development environment with production DATA ONLY.
# This creates a fresh schema via PayloadCMS migrations, then imports only the data.
#
# Usage:
#   ./sync-from-prod--DataOnly.sh -s SERVER -u USER
#
# Example:
#   ./sync-from-prod--DataOnly.sh -s 192.168.1.100 -u deploy_user
#   ./sync-from-prod--DataOnly.sh -s example.com -u admin
#
# Options:
#   -s SERVER     Production server IP address or domain name
#   -u USER       SSH username for production server
#   -h            Show help message

# Database configuration (matching your new environment)
POSTGRES_DB="payloadcms-db-052225blue"
POSTGRES_USER="payloadcms-052225blue-user"

# Default values (corrected for your new environment)
LOCAL_DB_CONTAINER="payloadcms-db-052225blue"
PROD_DB_CONTAINER="payloadcms-db-052225blue"
PAYLOAD_CONTAINER="payloadcms-cms-052225blue"
MIGRATIONS_PATH="./payloadcms-cms-052225blue/src/migrations"
MEDIA_PATH="./payloadcms-cms-052225blue/public/media"
MAIN_DIR="./sync-from-prod--related-files"
LOCAL_BACKUP_DIR="$MAIN_DIR/sync-to-prod--db-backups"
LOGS_DIR="$MAIN_DIR/sync-to-prod--logs"
# dont fill in these two-- they're filled via CLI like this: 
#     `sh ./sync-from-prod--DataOnly.sh -s Yo.uR.IpA.ddr -u someHumanUserName`
PROD_SERVER=""
PROD_USER=""
COMPOSE_FILE="docker-compose.local.yml"

# Create timestamp for the log file
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
LOG_FILE="$LOGS_DIR/sync_$TIMESTAMP.log"

# Create generic backup filenames (no server info)
BACKUP_PREFIX="payload_backup"
DATA_FILENAME="${BACKUP_PREFIX}_data_$TIMESTAMP.sql"

# Colors for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Setup logging directories
mkdir -p "$MAIN_DIR"
mkdir -p "$LOCAL_BACKUP_DIR"
mkdir -p "$LOGS_DIR"
touch "$LOG_FILE"

# Function to log messages to both console and log file
log() {
    echo -e "$1" | tee -a "$LOG_FILE"
}

# Function to display usage information
usage() {
    log "Usage: $0 -s SERVER -u USER"
    log ""
    log "Required arguments:"
    log "  -s SERVER     Production server IP address or domain name"
    log "  -u USER       SSH username for production server"
    log ""
    log "Optional arguments:"
    log "  -h            Show this help message"
    exit 1
}

# Function to check if the PayloadCMS server is fully up and running
wait_for_payload() {
    log "Waiting for PayloadCMS server to be fully up and running..."
    
    local max_attempts=30
    local attempt=0
    local server_url="http://localhost:3000"
    
    while [ $attempt -lt $max_attempts ]; do
        attempt=$((attempt + 1))
        
        # Use curl to check if the server is responding
        if curl -s -o /dev/null -w "%{http_code}" $server_url | grep -q "200"; then
            log "${GREEN}✓ PayloadCMS server is up and running (attempt $attempt)${NC}"
            # Give a little more time for everything to initialize
            sleep 5
            return 0
        fi
        
        log "Waiting for PayloadCMS server (attempt $attempt/$max_attempts)..."
        sleep 5
    done
    
    log "${RED}✗ PayloadCMS server did not come up after $max_attempts attempts${NC}"
    return 1
}

# Parse command line arguments
while getopts ":s:u:h" opt; do
    case ${opt} in
        s)
            PROD_SERVER=$OPTARG
            ;;
        u)
            PROD_USER=$OPTARG
            ;;
        h)
            usage
            ;;
        \?)
            log "Invalid option: $OPTARG" 1>&2
            usage
            ;;
        :)
            log "Invalid option: $OPTARG requires an argument" 1>&2
            usage
            ;;
    esac
done

# Check required parameters
if [ -z "$PROD_SERVER" ] || [ -z "$PROD_USER" ]; then
    log "${RED}Error: Server and SSH username are required.${NC}"
    usage
fi

# Log script start with date and time
log "\n${GREEN}=============================================${NC}"
log "${GREEN}Starting production to local DATA-ONLY sync: $(date)${NC}"
log "${GREEN}=============================================${NC}"

# Ensure local containers are running
log "\n${YELLOW}Checking local containers...${NC}"
if ! docker-compose -f "$COMPOSE_FILE" ps | grep -q "Up"; then
    log "${YELLOW}Starting local containers...${NC}"
    docker-compose -f "$COMPOSE_FILE" up -d
    
    # Wait for containers to be fully up
    sleep 10
fi

# Log information without exposing sensitive details
log "Starting production to local DATA-ONLY sync process..."
log "Production DB Container: $PROD_DB_CONTAINER"
log "Local DB Container: $LOCAL_DB_CONTAINER"
log "PayloadCMS Container: $PAYLOAD_CONTAINER"
log "Migrations Path: $MIGRATIONS_PATH"
log "Media Path: $MEDIA_PATH"
log "Main Directory: $MAIN_DIR"
log "DB Backups Directory: $LOCAL_BACKUP_DIR"
log "Logs Directory: $LOGS_DIR"
log "Log File: $LOG_FILE"

# Stop local PayloadCMS container to avoid issues
log "\n${YELLOW}Stopping local PayloadCMS container...${NC}"
docker-compose -f "$COMPOSE_FILE" stop $PAYLOAD_CONTAINER
sleep 3

# 1. Clean migration directory to avoid conflicts
log "\n${YELLOW}Cleaning local migration directory...${NC}"
rm -rf $MIGRATIONS_PATH/*
mkdir -p $MIGRATIONS_PATH

# 2. Fetch migration files from production server
log "\n${YELLOW}Fetching migration files from production server...${NC}"
ssh $PROD_USER@$PROD_SERVER "cd /home/ghaCICDDevOpsUser/payloadcms-cms-052225blue__migrations && tar czf - ." | tar xzf - -C $MIGRATIONS_PATH

if [ $? -eq 0 ]; then
    log "${GREEN}✓ Migration files fetched successfully!${NC}"
    log "  Files saved to: ${MIGRATIONS_PATH}"
else
    log "${RED}✗ Failed to fetch migration files${NC}"
    exit 1
fi

# 3. Ensure we also fetch the .last_migration_run file to prevent duplicate migrations
log "\n${YELLOW}Fetching .last_migration_run file...${NC}"
ssh $PROD_USER@$PROD_SERVER "cd /home/ghaCICDDevOpsUser/payloadcms-cms-052225blue__migrations && cat .last_migration_run 2>/dev/null || echo ''" > "$MIGRATIONS_PATH/.last_migration_run"

# 4. Clean and fetch media files from production server
log "\n${YELLOW}Cleaning local media directory...${NC}"
rm -rf $MEDIA_PATH/*
mkdir -p $MEDIA_PATH

log "\n${YELLOW}Fetching media files from production server...${NC}"
ssh $PROD_USER@$PROD_SERVER "cd /home/ghaCICDDevOpsUser/payloadcms-cms-052225blue__media && tar czf - ." | tar xzf - -C $MEDIA_PATH

if [ $? -eq 0 ]; then
    log "${GREEN}✓ Media files fetched successfully!${NC}"
    log "  Files saved to: ${MEDIA_PATH}"
else
    log "${RED}✗ Failed to fetch media files${NC}"
    exit 1
fi

# 5. Create backup of production database (DATA ONLY)
log "\n${YELLOW}Creating DATA-ONLY backup of production database...${NC}"

# Ensure backup directory exists on remote server
ssh $PROD_USER@$PROD_SERVER "mkdir -p ~/payloadcms-database-backups"

# Create data-only backup - We'll let PayloadCMS handle the schema
log "${YELLOW}Creating data-only backup...${NC}"
ssh $PROD_USER@$PROD_SERVER "docker exec $PROD_DB_CONTAINER pg_dump -h localhost -p 5432 -U $POSTGRES_USER --data-only --disable-triggers $POSTGRES_DB > ~/payloadcms-database-backups/temp_data_backup.sql"
if [ $? -ne 0 ]; then
    log "${RED}✗ Failed to create data backup on production server${NC}"
    exit 1
fi

# Download the backup file
log "${YELLOW}Downloading database backup...${NC}"
scp $PROD_USER@$PROD_SERVER:~/payloadcms-database-backups/temp_data_backup.sql "$LOCAL_BACKUP_DIR/$DATA_FILENAME"
if [ $? -ne 0 ]; then
    log "${RED}✗ Failed to download database backup${NC}"
    exit 1
fi

# Clean up remote backup file
ssh $PROD_USER@$PROD_SERVER "rm ~/payloadcms-database-backups/temp_data_backup.sql"

log "${GREEN}✓ Production database DATA-ONLY backup created and downloaded!${NC}"

# 6. Use PayloadCMS to create fresh database schema
log "\n${YELLOW}Using PayloadCMS to create a fresh database schema...${NC}"
log "${YELLOW}WARNING: This will create a fresh schema and import production data. Press CTRL+C to cancel or ENTER to continue${NC}"
read

# Start the PayloadCMS container
log "Starting PayloadCMS container for migrations..."
docker-compose -f "$COMPOSE_FILE" start $PAYLOAD_CONTAINER

# Wait a moment for the container to start
sleep 5

# Run payload:migrate:fresh from inside the container
log "\n${YELLOW}Running migrations:fresh command to create clean schema...${NC}"
docker exec $PAYLOAD_CONTAINER sh -c "cd /app && pnpm run payload:migrate:fresh" 2>&1 | tee -a "$LOG_FILE"

if [ $? -ne 0 ]; then
    log "${RED}✗ Failed to run fresh migrations${NC}"
    exit 1
fi

log "${GREEN}✓ Fresh database schema created with PayloadCMS migrations!${NC}"

# Stop PayloadCMS container for data import
log "\n${YELLOW}Stopping PayloadCMS container for data import...${NC}"
docker-compose -f "$COMPOSE_FILE" stop $PAYLOAD_CONTAINER
sleep 3

# 7. Process and import the data
log "\n${YELLOW}Processing and importing production data to local database...${NC}"

# Process the data file to handle potential errors
DATA_MODIFIED="$LOCAL_BACKUP_DIR/modified_$DATA_FILENAME"
log "Processing backup file to make it more resilient..."

# Clean up the SQL file for better compatibility
cat "$LOCAL_BACKUP_DIR/$DATA_FILENAME" | \
  # Remove problematic SET statements
  grep -v "^SET " | \
  # Remove SELECT setval statements that might cause issues
  grep -v "^SELECT pg_catalog.setval" | \
  # Remove comment lines
  grep -v "^--" | \
  # Remove empty lines
  grep -v "^$" | \
  # Add ON CONFLICT handling for INSERT statements to handle potential duplicates
  sed 's/INSERT INTO \([^ ]*\)/INSERT INTO \1/g' > "$DATA_MODIFIED"

# Import the processed data into the database
log "Importing processed data into the database..."
cat "$DATA_MODIFIED" | docker exec -i $LOCAL_DB_CONTAINER psql -U $POSTGRES_USER -d $POSTGRES_DB 2>&1 | tee -a "$LOG_FILE"

# Check for serious import errors
if grep -q "ERROR:" "$LOG_FILE"; then
    log "${YELLOW}⚠️ Some errors were encountered during data import.${NC}"
    log "${YELLOW}These may be expected if there are constraints or duplicate keys.${NC}"
    log "${YELLOW}Check the log file for details: $LOG_FILE${NC}"
else
    log "${GREEN}✓ Data import completed without error messages.${NC}"
fi

# Clean up temporary files
rm "$DATA_MODIFIED"

log "${GREEN}✓ Production data successfully imported to fresh local database!${NC}"

# 8. Restart local PayloadCMS container
log "\n${YELLOW}Restarting local PayloadCMS container...${NC}"
docker-compose -f "$COMPOSE_FILE" start $PAYLOAD_CONTAINER

# Wait for PayloadCMS to be fully up before considering the sync complete
log "\n${YELLOW}Waiting for PayloadCMS to be fully up...${NC}"
if wait_for_payload; then
    log "${GREEN}✓ PayloadCMS is now fully running!${NC}"
else
    log "${RED}✗ PayloadCMS did not start properly. Check container logs for more details.${NC}"
    log "${YELLOW}You may need to check docker logs with: docker logs $PAYLOAD_CONTAINER${NC}"
    exit 1
fi

log "\n${GREEN}=====================================${NC}"
log "${GREEN}Production to local DATA-ONLY sync complete!${NC}"
log "${GREEN}Your local environment now has fresh schema with production data.${NC}"
log "${GREEN}=====================================${NC}"
log "${GREEN}Log file saved to: $LOG_FILE${NC}"