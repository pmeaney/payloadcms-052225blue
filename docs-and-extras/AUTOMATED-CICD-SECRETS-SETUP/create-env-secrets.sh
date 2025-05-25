# Create a new environment named "production"
gh api -X PUT /repos/pmeaney/payloadcms-052225blue/environments/production

# install yq:
# brew install yq

# Preview what would be in POSTGRES__SECRET_ENV_FILE
yq '.postgres_defaults' .github/defaults/env-defaults.yml
# Preview what would be in PAYLOAD__SECRET_ENV_FILE (excluding SKIP items)
yq '.payloadcms_defaults' .github/defaults/env-defaults.yml | grep -v "SKIP"

# Setup the secrets files on Github - environment: production
# For POSTGRES__SECRET_ENV_FILE (lines 12-14)
yq '.postgres_defaults' .github/defaults/env-defaults.yml | gh secret set POSTGRES__SECRET_ENV_FILE --env production

##########  !!!!!!!!!!!!!  WAAAIIIIIIT A SEC!   !!!!!!!!!!!!!!!!!!!!
# Before you run this next one, make sure you update: NEXT_PUBLIC_SERVER_URL=http://localhost:3000
# to the actual website domain-- e.g. https://mysite.com
# For PAYLOAD__SECRET_ENV_FILE (lines 20-26, excluding the last two items with "SKIP")
yq '.payloadcms_defaults' .github/defaults/env-defaults.yml | grep -v "SKIP" | gh secret set PAYLOAD__SECRET_ENV_FILE --env production

# NOTE:
# If you see "cat: stdin: Input/output error" it's actually misleading.
# You should see this-- the checkmark indicating the secret was created successfully.
# However, if you want to test whether they're accessible on CICD, just add the secrets-test.yml into a .github/workflows directory so that it runs.
# cat: stdin: Input/output error
# ✓ Set Actions secret POSTGRES__SECRET_ENV_FILE for pmeaney/payloadcms-052225blue
# cat: stdin: Input/output error
# ✓ Set Actions secret PAYLOAD__SECRET_ENV_FILE for pmeaney/payloadcms-052225blue

# Next, we pull 4 general repo secrets from 1pass.

####### BE SURE ALL THE VALUES ARE CORRECT!
# - Including
#   - 1pass names - "label=<1pass name>"
#   - the desired name for the items to set in the github repo secrets 
#     (these correspond with the various keys used by the CICD process)
#
#
# CHECK
# ITEM_1P - Define the name of the 1Password item (secure note) which contains the secrets.
ITEM_1P="debblue - 052225blue"


### These first two items are the most likely to change values, 
#   since they have a date string and/or color in their names
# CHECK - Ensure "id_ed25519_052225blue_cicd_np" matches the FILE NAME. LINUX_SSH_PRIVATE_KEY_CICD already matches what is in CICD
# Set LINUX_SSH_PRIVATE_KEY_CICD as a repository secret (reading from ssh private key file on dev laptop)
gh secret set LINUX_SSH_PRIVATE_KEY_CICD --body "$(cat ~/.ssh/id_ed25519_052225blue_cicd_np)"

# CHECK - Ensure "GHPATCICD_RpoWkflo_WRDpckgs_052225" matches the 1pass item. GHPATCICD_RPOWKFLO_WRDPCKGS already matches what is in CICD
# Set GHPATCICD_RPOWKFLO_WRDPCKGS as a repository secret
GHPATCICD_TOKEN=$(op item get "${ITEM_1P}" --fields label=GHPATCICD_RpoWkflo_WRDpckgs_052225)
gh secret set GHPATCICD_RPOWKFLO_WRDPCKGS --body "${GHPATCICD_TOKEN}"

### These next ones are typically unlikely to change
# CHECK
# Set LINUX_BOTCICDGHA_USERNAME as a repository secret
LINUX_BOTCICDGHA_USERNAME=$(op item get "${ITEM_1P}" --fields label=LINUX_BOTCICDGHA_USERNAME)
gh secret set LINUX_BOTCICDGHA_USERNAME --body "${LINUX_BOTCICDGHA_USERNAME}"

# CHECK
# Set LINUX_SERVER_IPADDRESS as a repository secret
LINUX_SERVER_IPADDRESS=$(op item get "${ITEM_1P}" --fields label=LINUX_SERVER_IPADDRESS)
gh secret set LINUX_SERVER_IPADDRESS --body "${LINUX_SERVER_IPADDRESS}"
