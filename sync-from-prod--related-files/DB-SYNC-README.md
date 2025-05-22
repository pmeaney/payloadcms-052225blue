
# What is the `sync-from-prod` directory for?

The `sync-from-prod` directory works with the sync-from-prod.sh shell script to contain .sql files pulled as backups of our remote database.

From here, it uses that .sql file to upload a schema & data into the local postgres container, so our local PayloadCMS has the same DB structure, data, & content as our remote app.

This makes it a bit easier to work on.

Just be sure the project is running locally (at least its DB), otherwise the script won't be able to reach the local db.

For more info see these project docs:

- [Overview of Development and Production Workflows](./docs-and-extras/OVERVIEW-Dev-and-Prod-Workflows.md)
- [Production to Local data & content Synchronization](./docs-and-extras/OVERVIEW-Prod-To-Local-Sync.md)
  