# To use this Dockerfile, you have to set `output: 'standalone'` in your next.config.js file.
FROM node:22.12.0-alpine AS base

# Install pnpm only once in the base image
RUN npm install -g pnpm@10.3.0

# Install dependencies only when needed
FROM base AS deps
RUN apk add --no-cache libc6-compat
WORKDIR /app

# Install dependencies using pnpm
COPY package.json pnpm-lock.yaml ./
RUN pnpm install --frozen-lockfile

# Rebuild the source code only when needed
FROM base AS builder
WORKDIR /app

COPY --from=deps /app/node_modules ./node_modules
COPY . .

# Copies the CICD provided env file to .env in the container
ARG ENV_FILE
COPY ${ENV_FILE} .env
# Save environment variables for later stages
RUN cat .env > /tmp/env_vars
ENV $(cat .env | xargs)

# Add support for skipping the Next.js build during CI
ARG SKIP_NEXTJS_BUILD=false

# Prepare for different build strategies
RUN mkdir -p .next/standalone .next/static

# Create runtime-prep directory
RUN mkdir -p /runtime-prep
# Copy entrypoint.sh to a temp location
COPY entrypoint.sh /tmp/entrypoint.sh

# If skipping build, prepare files for runtime build
RUN if [ "$SKIP_NEXTJS_BUILD" = "true" ]; then \
      echo "Preparing for runtime build..." && \
      NODE_OPTIONS=--no-deprecation pnpm install && \
      echo '{"type":"commonjs"}' > .next/package.json && \
      echo 'module.exports = {props: {}}' > .next/standalone/server.js && \
      echo "true" > .next/skip-build && \
      # Copy necessary files for runtime build \
      cp -r ./src .next/ && \
      cp next.config.js .next/ && \
      cp tsconfig.json .next/ && \
      cp postcss.config.js .next/ && \
      cp redirects.js .next/ && \
      cp tailwind.config.mjs .next/; \
    else \
      # Run the build with migrations \
      NODE_OPTIONS=--no-deprecation pnpm run ci; \
    fi

# Create a separate preparation stage for runtime files
FROM builder AS prepare-runtime
WORKDIR /app

# Copy base files that are needed regardless of build mode
COPY --from=builder /tmp/env_vars /runtime-prep/.env
COPY --from=builder /app/public /runtime-prep/public
COPY --from=builder /app/package.json /runtime-prep/package.json
COPY --from=builder /app/next.config.js /runtime-prep/
COPY --from=builder /app/postcss.config.js /runtime-prep/
COPY --from=builder /app/tailwind.config.mjs /runtime-prep/
COPY --from=builder /app/tsconfig.json /runtime-prep/
COPY --from=builder /app/redirects.js /runtime-prep/
COPY --from=builder /app/next-sitemap.config.cjs /runtime-prep/
COPY --from=builder /tmp/entrypoint.sh /runtime-prep/entrypoint.sh

# Create src directory structure but don't copy migrations
# (migrations will be mounted from host)
RUN mkdir -p /runtime-prep/src/migrations

# Copy additional files based on build mode
RUN if [ "$SKIP_NEXTJS_BUILD" = "true" ]; then \
      echo "Creating runtime preparation directory" && \
      mkdir -p /runtime-prep/src && \
      cp -r ./src/* /runtime-prep/src/ && \
      cp -r .next /runtime-prep/; \
      echo "Preparing for runtime build..."; \
    else \
      echo "Creating build output directory" && \
      cp -r .next /runtime-prep/ && \
      echo "Using built artifacts..."; \
    fi

# Production image, copy all the files and run next
FROM base AS runner
WORKDIR /app

ENV NODE_ENV production

# Install PostgreSQL client for database connection checks
RUN apk add --no-cache postgresql-client

RUN addgroup --system --gid 1001 nodejs && \
    adduser --system --uid 1001 nextjs

# Copy all prepared files from the preparation stage
COPY --from=prepare-runtime --chown=nextjs:nodejs /runtime-prep/. .

# Copy node_modules
COPY --from=builder --chown=nextjs:nodejs /app/node_modules ./node_modules
COPY --from=builder --chown=nextjs:nodejs /app/package.json ./package.json

# Add public directory which is always needed
COPY --from=builder --chown=nextjs:nodejs /app/public ./public

# Add entrypoint script directly to ensure we have the latest version
# This is a critical component, so we include it directly in the final stage
COPY entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh
RUN chown nextjs:nodejs /app/entrypoint.sh

# Ensure migration directory and next-env.d.ts have correct permissions
RUN mkdir -p /app/src/migrations && \
    touch /app/next-env.d.ts && \
    chown -R nextjs:nodejs /app/src/migrations /app/next-env.d.ts

USER nextjs

EXPOSE 3000
ENV PORT 3000

# Use the entrypoint script to run the app
CMD ["/bin/sh", "/app/entrypoint.sh"]