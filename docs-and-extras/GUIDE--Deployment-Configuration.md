# PayloadCMS Deployment Configuration Guide

This guide outlines the configuration details for the current blue deployment template. When using this template, you should create a new repo for each deployment - whether it's blue, blue, green, or any color code you choose. 

> **Note:** This template is designed with "one repo per deployment" in mind. If you need multiple environments (like blue/green deployment), you would create separate repositories for each color. If you only need one instance, you can keep blue or rename it to your preferred color, but ensure you update the date portion for clarity.

The purpose of this guide is basically to point out that you need to change: `052225blue` to `<someDate><someColor>`, e.g. `123199purple`. 

**When I mention "update 052225blue to 123199purple, or see this checkbox below, consider that your cue to update the relevant file config**

- [ ] *052225blue -> 123199purple*

It will also point out things you need to manually do-- such as setup the Github Repo, and its secrets, as listed below. The github repo secrets you'll add will essentially be your production secrets. CICD pulls them from github and injects them into your containers when they're created on the remote server. **As a template for the prod secrets to add to the github repo secrets, use the ./github/defaults/env-defaults.yml** file's sections for the pertinent app (payload or postgresql-- just be sure to scramble them as appropriate.)

## Secrets Setup

Review the `docs-and-extras/AUTOMATED-CICD-SECRETS-SETUP/create-env-secrets.sh` file

- Replace its values with the relevant ones for your repo & project
- It will add all 6 secrets to the repo (2 env -> production, 4 general repo)

## Repository Setup for blue Deployment

To set up the blue deployment repository:

1. **Create a GitHub repository** with the naming pattern.

- [ ] *052225blue -> 123199purple*
- `payloadcms-052225blue`

2. **Set up repository secrets** in the repo:
   - `LINUX_SSH_PRIVATE_KEY_CICD`: SSH key for deployment server access
   - `LINUX_BOTCICDGHA_USERNAME`: Username for SSH access
   - `LINUX_SERVER_IPADDRESS`: IP address of deployment server
   - `POSTGRES__SECRET_ENV_FILE`: Database environment variables
   - `PAYLOAD__SECRET_ENV_FILE`: CMS environment variables
   - `GHPATCICD_RPOWKFLO_WRDPCKGS`: GitHub Personal Access Token with repository, workflow, and package read/write permissions

## Configuration Files for blue Deployment

### 1. Main Workflow File (z-main.yml)

The workflow file is configured with hardcoded values:

- [ ] *052225blue -> 123199purple*

```yaml
# In database job:
with:
  environment: production
  topic_name: payloadcms
  deployment_date: 052225
  deployment_color: blue
  db_container_name: payloadcms-db-052225blue

# In cms-fe job:
with:
  environment: production
  topic_name: payloadcms
  deployment_date: 052225
  deployment_color: blue
  cms_dir_name: payloadcms-cms
  cms_container_name: payloadcms-cms-052225blue
  cms_image_name: ghcr.io/${{ github.actor }}/payloadcms-cms-052225blue:latest
```

### 2. Local Development Docker Compose File (docker-compose.local.yml)

Ensure service names, container names, and network name use the blue color code:

- [ ] *052225blue -> 123199purple*

```yaml
services:
  payloadcms-db-052225blue:
    image: postgres:17
    container_name: payloadcms-db-052225blue
    # ...other settings...
    networks:
      - dockernet-payloadcms-blue

  payloadcms-cms-052225blue:
    image: node:20-alpine
    container_name: payloadcms-cms-052225blue
    # ...other settings...
    networks:
      - dockernet-payloadcms-blue
    depends_on:
      - payloadcms-db-052225blue

networks:
  dockernet-payloadcms-blue:
    name: dockernet-payloadcms-blue
```

### 3. Environment Variables Files

**Four** different environment files need to maintain the blue naming convention:

- [ ] *052225blue -> 123199purple*

#### a. `.github/defaults/env-defaults.yml`
```yaml
postgres_defaults: |
  POSTGRES_DB=payloadcms-db-052225blue
  POSTGRES_USER=payloadcms-052225blue-user
  POSTGRES_PASSWORD=payloadcmsPass

payloadcms_defaults: |
  DATABASE_URI=postgres://payloadcms-052225blue-user:payloadcmsPass@payloadcms-db-052225blue:5432/payloadcms-db-052225blue
  PAYLOAD_SECRET=0505d1e544a564c8730e83fb
  NEXT_PUBLIC_SERVER_URL=http://localhost:3000
  CRON_SECRET=YOUR_CRON_SECRET_HERE
  PREVIEW_SECRET=YOUR_SECRET_HERE
  PAYLOAD_SKIP_MIGRATION=true
  NEXT_SKIP_DB_CONNECT=true
```

#### b. CMS `.env` (development)
```
DATABASE_URI=postgres://payloadcms-052225blue-user:payloadcmsPass@payloadcms-db-052225blue:5432/payloadcms-db-052225blue
PAYLOAD_SECRET=7596b4a8fcc3d8086f8f5001
NEXT_PUBLIC_SERVER_URL=http://localhost:3000
CRON_SECRET=YOUR_CRON_SECRET_HERE
PREVIEW_SECRET=YOUR_SECRET_HERE
```

#### c. DB `.env`
```
POSTGRES_DB=payloadcms-db-052225blue
POSTGRES_USER=payloadcms-052225blue-user
POSTGRES_PASSWORD=payloadcmsPass
```

#### d. `example-postgres-env.env`
```
POSTGRES_DB=payloadcms-db-052225blue
POSTGRES_USER=payloadcms-052225blue-user
POSTGRES_PASSWORD=payloadcmsPass
```

### 4. Database and CMS Workflow Files

No changes needed to the individual workflow files (`a-db-init.yml` and `b-cms-fe-check-deploy.yml`) because they accept parameters from the main workflow file.

## CI/CD Deployment Logic

The CI/CD pipeline (`b-cms-fe-check-deploy.yml`) determines when to deploy the CMS container (`payloadcms-cms-052225blue`) based on the following logic:

- **Initial Deployment (No Container)**:
  - If the CMS container does not exist on the deployment server, the pipeline deploys the current commit (`HEAD`) without checking for changes.
  - All files in the `payloadcms-cms` directory are listed in the deployment summary for reference.
  - This ensures the CMS is deployed when setting up a new environment or after a container is removed.

- **Subsequent Deployments (Container Exists, Artifact Exists)**:
  - If the CMS container exists and a deployment marker artifact (`cms-fe-last-deployed-commit`) is found, the pipeline checks for changes in the `payloadcms-cms` directory since the last deployed commit using `git diff`.
  - If changes are detected (e.g., a comment added to a file), the pipeline deploys the new version and updates the artifact with the current commit hash.
  - If no changes are detected, the pipeline skips deployment.

- **Container Exists but No Artifact (Recovery Case)**:
  - If the CMS container exists but no deployment marker artifact is found (e.g., due to a failed previous run or manual deletion), the pipeline skips deployment to avoid unintended changes, logging a warning.
  - **Note for Developers**: If you want to force a deployment when the container exists but no artifact is found (e.g., to recover from a failed run), modify the `else` block in the "Check PayloadCMS Directory Changes" step of `b-cms-fe-check-deploy.yml` to deploy the current commit and list all files in `payloadcms-cms` for the summary.
  - This ensures the pipeline remains safe by default but can be adjusted for recovery scenarios.

- **Deployment Summary**:
  - The `z-main.yml` workflow generates a detailed deployment summary, including the commit hash, changed files, and actions taken (e.g., "Deployed: Initial deployment - no container exists" or "No deployment needed - container exists and no code changes").

## Resources Created By blue Deployment

The blue deployment will create the following resources:

### Docker Images
- **blue Deployment Image**: `ghcr.io/[username]/payloadcms-cms-052225blue:latest`

### Docker Containers
- **blue Database**: `payloadcms-db-052225blue`
- **blue CMS**: `payloadcms-cms-052225blue`

### Docker Networks
- **blue Network**: `private-payloadcms-blue-dockernet`
- Also connects to: `main-network--npm020325` (shared)

### Docker Volumes
- **blue Database Data**: `payloadcms-db-052225blue-data`
- **blue Database Init Scripts**: `payloadcms-db-052225blue-init-scripts`

### Host Directories (on Deployment Server)
- **blue CMS Migrations**: `~/payloadcms-cms-052225blue__migrations`
- **blue CMS Media**: `~/payloadcms-cms-052225blue__media`

## Verification Checklist

After setup, verify:

- [ ] Both containers are running on the deployment server (`docker ps | grep payloadcms`)
- [ ] Database is properly configured (`docker volume ls | grep payloadcms`)
- [ ] Volume mounts exist for migrations and media (`ls -la ~/ | grep payloadcms`)
- [ ] Network configuration is correct (`docker network ls | grep payloadcms`)
- [ ] CMS instance can connect to its database
- [ ] Web access works

---

> # ALL DONE WITH CONFIG!

>**Extra info Below -- on Blue/Green Deployment**

## Blue/Green Deployment Strategy 

If you decide to implement a blue/green deployment approach, you would create two separate repositories based on this blue template - one for blue and one for green. Here's a summary of the basic strategy:

### Creating Blue/Green Deployment

1. Create two repositories from this template:
   - `payloadcms-052225blue`
   - `payloadcms-052225green`

2. Configure each with its respective color in all files mentioned above

3. Deploy both environments initially

4. Configure traffic routing:
   - Both Blue and Green CMS instances will attempt to use port 3000 by default
   - Configure a reverse proxy (like Nginx) to route production traffic to the active deployment
   - Assign different ports for direct access (e.g., 3000 for Blue, 3001 for Green)

### Deployment Process

1. Direct traffic to the initial active environment (e.g., Blue)
2. For updates:
   - Deploy changes to the inactive environment (e.g., Green)
   - Test the changes in the inactive environment
   - Switch traffic to the newly updated environment
   - The previously active environment becomes inactive

This approach allows zero-downtime deployments and easy rollback if issues are discovered after deployment.