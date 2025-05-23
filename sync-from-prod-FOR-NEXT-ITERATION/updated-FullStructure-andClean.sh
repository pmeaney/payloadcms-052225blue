#!/bin/bash
#
#  !!!!!!!!!!!!!!!!!!!!!!!!!!!
#   RECOMMENDED:
#     dont forget to run the initial db seed process, 
#     provided by PayloadCMS admin dashboard when
#     project first boots up
#  !!!!!!!!!!!!!!!!!!!!!!!!!!!
# sync-from-prod--FullStructure-andClean.sh
#
# Script to sync your local development environment with production.
# This handles database content, migration files, and media files.
#
# Usage:
#   ./sync-from-prod--FullStructure-andClean.sh -s SERVER -u USER
#
# Example:
#   ./sync-from-prod--FullStructure-andClean.sh -s 192.168.1.100 -u deploy_user
#   ./sync-from-prod--FullStructure-andClean.sh -s example.com -u admin
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
#     `sh ./sync-from-prod--FullStructure-andClean.sh -s Yo.uR.IpA.ddr -u someHumanUserName`
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
log "${GREEN}Starting production to local FULL STRUCTURE sync: $(date)${NC}"
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
log "Starting production to local FULL STRUCTURE sync process..."
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

# 2. Check if migration directory exists on production server
log "\n${YELLOW}Checking migration directory on production server...${NC}"
MIGRATION_DIR_EXISTS=$(ssh $PROD_USER@$PROD_SERVER "test -d /home/ghaCICDDevOpsUser/payloadcms-cms-052225blue__migrations && echo 'exists' || echo 'missing'")

if [ "$MIGRATION_DIR_EXISTS" = "missing" ]; then
    log "${YELLOW}⚠️ Migration directory does not exist on production server.${NC}"
    log "${YELLOW}As a best practice, we should activate the initial seed migration provided by PayloadCMS.${NC}"
    log "${YELLOW}Activate it now? Press ENTER to continue or CTRL+C to cancel${NC}"
    read
    
    log "${YELLOW}Creating migration directory and activating initial migration on production...${NC}"
    ssh $PROD_USER@$PROD_SERVER "mkdir -p /home/ghaCICDDevOpsUser/payloadcms-cms-052225blue__migrations"
    ssh $PROD_USER@$PROD_SERVER "cd /home/ghaCICDDevOpsUser && docker exec payloadcms-cms-052225blue sh -c 'cd /app && pnpm run payload:migrate:create'"
    
    if [ $? -ne 0 ]; then
        log "${RED}✗ Failed to create initial migration on production server${NC}"
        exit 1
    fi
    
    log "${GREEN}✓ Initial migration created on production server!${NC}"
else
    log "${GREEN}✓ Migration directory exists on production server${NC}"
fi

# 3. Check if migration files exist in the directory
log "\n${YELLOW}Checking for migration files on production server...${NC}"
MIGRATION_FILES_COUNT=$(ssh $PROD_USER@$PROD_SERVER "ls -1 /home/ghaCICDDevOpsUser/payloadcms-cms-052225blue__migrations/*.ts 2>/dev/null | wc -l")

if [ "$MIGRATION_FILES_COUNT" -eq 0 ]; then
    log "${YELLOW}⚠️ No migration files exist in the migration directory.${NC}"
    log "${YELLOW}As a best practice, we should activate the initial seed migration provided by PayloadCMS.${NC}"
    log "${YELLOW}Activate it now? Press ENTER to continue or CTRL+C to cancel${NC}"
    read
    
    log "${YELLOW}Creating initial migration on production server...${NC}"
    ssh $PROD_USER@$PROD_SERVER "cd /home/ghaCICDDevOpsUser && docker exec payloadcms-cms-052225blue sh -c 'cd /app && pnpm run payload:migrate:create'"
    
    if [ $? -ne 0 ]; then
        log "${RED}✗ Failed to create initial migration on production server${NC}"
        exit 1
    fi
    
    log "${GREEN}✓ Initial migration created on production server!${NC}"
else
    log "${GREEN}✓ Found $MIGRATION_FILES_COUNT migration file(s) on production server${NC}"
fi

# 4. Fetch migration files from production server
log "\n${YELLOW}Fetching migration files from production server...${NC}"
ssh $PROD_USER@$PROD_SERVER "cd /home/ghaCICDDevOpsUser/payloadcms-cms-052225blue__migrations && tar czf - ." | tar xzf - -C $MIGRATIONS_PATH

if [ $? -eq 0 ]; then
    log "${GREEN}✓ Migration files fetched successfully!${NC}"
    log "  Files saved to: ${MIGRATIONS_PATH}"
else
    log "${RED}✗ Failed to fetch migration files${NC}"
    exit 1
fi

# 5. Ensure we also fetch the .last_migration_run file to prevent duplicate migrations
log "\n${YELLOW}Fetching .last_migration_run file...${NC}"
ssh $PROD_USER@$PROD_SERVER "cd /home/ghaCICDDevOpsUser/payloadcms-cms-052225blue__migrations && cat .last_migration_run 2>/dev/null || echo ''" > "$MIGRATIONS_PATH/.last_migration_run"

# 6. Clean and fetch media files from production server
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

# 7. Create backup of production database (COMPLETE STRUCTURE + DATA)
log "\n${YELLOW}Creating COMPLETE backup of production database...${NC}"

# Ensure backup directory exists on remote server
ssh $PROD_USER@$PROD_SERVER "mkdir -p ~/payloadcms-database-backups"

# Create complete database backup (schema + data)
log "${YELLOW}Creating complete database backup...${NC}"
ssh $PROD_USER@$PROD_SERVER "docker exec $PROD_DB_CONTAINER pg_dump -h localhost -p 5432 -U $POSTGRES_USER --clean --if-exists --no-owner --no-privileges $POSTGRES_DB > ~/payloadcms-database-backups/temp_data_backup.sql"
if [ $? -ne 0 ]; then
    log "${RED}✗ Failed to create database backup on production server${NC}"
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

log "${GREEN}✓ Production database COMPLETE backup created and downloaded!${NC}"

# 8. Skip PayloadCMS migrations since we're doing a complete restore
log "\n${YELLOW}Skipping fresh migrations since we're doing a complete database restore...${NC}"
log "${YELLOW}WARNING: This will completely replace your local database with production data. Press CTRL+C to cancel or ENTER to continue${NC}"
read

# Stop PayloadCMS container to avoid conflicts during restore
log "Stopping PayloadCMS container for complete database restore..."
docker-compose -f "$COMPOSE_FILE" stop $PAYLOAD_CONTAINER
sleep 3

# 9. Restore the complete database
log "\n${YELLOW}Restoring complete production database to local...${NC}"

# Import the complete database (this will drop and recreate everything)
log "Restoring complete database from production..."
cat "$LOCAL_BACKUP_DIR/$DATA_FILENAME" | docker exec -i $LOCAL_DB_CONTAINER psql -U $POSTGRES_USER -d $POSTGRES_DB 2>&1 | tee -a "$LOG_FILE"

# Check for serious import errors
if grep -q "ERROR:" "$LOG_FILE"; then
    log "${YELLOW}⚠️ Some errors were encountered during database restore.${NC}"
    log "${YELLOW}These may be expected during clean/drop operations.${NC}"
    log "${YELLOW}Check the log file for details: $LOG_FILE${NC}"
else
    log "${GREEN}✓ Database restore completed without error messages.${NC}"
fi

log "${GREEN}✓ Production database structure and data successfully restored locally!${NC}"

# 10. Restart local PayloadCMS container
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
log "${GREEN}Production to local FULL STRUCTURE sync complete!${NC}"
log "${GREEN}Your local environment now exactly mirrors production.${NC}"
log "${GREEN}=====================================${NC}"
log "${GREEN}Log file saved to: $LOG_FILE${NC}"