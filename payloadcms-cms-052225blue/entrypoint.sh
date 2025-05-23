#!/bin/sh
set -e

# Set global NODE_OPTIONS to suppress deprecation warnings
export NODE_OPTIONS="--no-deprecation"

echo "Starting PayloadCMS application..."

# Basic environment checks
if [ -z "$DATABASE_URI" ]; then
  echo "ERROR: DATABASE_URI environment variable is not set"
  exit 1
fi

if [ -z "$PAYLOAD_SECRET" ]; then
  echo "ERROR: PAYLOAD_SECRET environment variable is not set"
  exit 1
fi

# Parse DB connection params
DB_HOST=$(echo $DATABASE_URI | sed -E 's/.*@([^:]+):.*/\1/')
DB_PORT=$(echo $DATABASE_URI | sed -E 's/.*:([0-9]+)\/.*/\1/')
DB_NAME=$(echo $DATABASE_URI | sed -E 's/.*\/([^?]+).*/\1/')
DB_USER=$(echo $DATABASE_URI | sed -E 's/.*:\/\/([^:]+):.*/\1/')

# Wait for DB
echo "Waiting for PostgreSQL at $DB_HOST:$DB_PORT..."
for i in $(seq 1 30); do
  if pg_isready -h "$DB_HOST" -p "$DB_PORT" -U "$DB_USER" -d "$DB_NAME" > /dev/null 2>&1; then
    echo "PostgreSQL is ready!"
    break
  fi
  
  if [ $i -eq 30 ]; then
    echo "ERROR: PostgreSQL not available after 30 attempts"
    exit 1
  fi
  
  echo "Waiting for PostgreSQL... attempt $i/30"
  sleep 3
done

# Check if migrations directory exists INSIDE THE CONTAINER and create if necessary
# Note: This is needed even with bind mounts because:
# 1. The container needs the directory to exist with proper permissions
# 2. It ensures the directory path is valid before PayloadCMS tries to access it
# 3. It works as a fallback in case the host directory (~/payloadcms-cms__migrations) wasn't properly mounted
# (CICD makes the mounts the binded directories via this: `-v ~/payloadcms-cms__migrations:/app/src/migrations`)
# (Hence, here, we're just making sure the directory exists in the container, and letting it be accessible)
if [ ! -d "/app/src/migrations" ]; then
  echo "Migrations directory doesn't exist in container, creating..."
  mkdir -p /app/src/migrations
  # Ensure the directory is writable by the container
  chmod 755 /app/src/migrations
fi

# Create initial migration if directory is empty
if [ -z "$(ls -A /app/src/migrations 2>/dev/null)" ]; then
  echo "The /src/migration directory is empty."
  echo "Creating initial migration..."
  pnpm run payload:migrate:create --name initial
  
  # Ensure the files are accessible outside the container (for bind mounts)
  chmod -R 755 /app/src/migrations
  
  echo "Initial migration created and accessible in the host filesystem."
  
  # Store this as the last migration run
  find /app/src/migrations -name "*.ts" | sort | tail -1 | xargs basename > /app/src/migrations/.last_migration_run
  chmod 644 /app/src/migrations/.last_migration_run
  
  # Run the initial migration
  echo "Running initial migration..."
  pnpm run payload:migrate
else
  # Smart migration detection
  echo "Checking for new migrations..."
  
  # Get the last migration that was run
  LAST_MIGRATION_RUN=$(cat /app/src/migrations/.last_migration_run 2>/dev/null || echo "none")
  
  # Get the latest migration file
  LATEST_MIGRATION=$(find /app/src/migrations -name "*.ts" | sort | tail -1 | xargs basename 2>/dev/null || echo "none")
  
  echo "Last migration run: $LAST_MIGRATION_RUN"
  echo "Latest migration available: $LATEST_MIGRATION"
  
  if [ "$LAST_MIGRATION_RUN" != "$LATEST_MIGRATION" ] && [ "$LATEST_MIGRATION" != "none" ]; then
    echo "New migrations detected, running migrations..."
    pnpm run payload:migrate
    echo "$LATEST_MIGRATION" > /app/src/migrations/.last_migration_run
    echo "Migration complete, updated last migration record."
  else
    echo "No new migrations detected, skipping migrations"
  fi
fi

# Build if needed (for CICD skip build mode)
if [ -f .next/skip-build ]; then
  echo "Running Next.js build..."
  export NEXT_SKIP_DB_CONNECT=true
  # Run build and handle postbuild via exec to ensure environment variables are properly passed
  pnpm run build && pnpm run postbuild
fi

# Start application
echo "Starting Next.js application..."
exec pnpm run start