
# Postgres to App Connection


This works for local dev.  
For remote prod dev, It might work.  Otherwise, the IP will may need to be the Docker Engine IP (assuming use of Docker)

On PayloadCMS bootstrapping, use this DB Connection string:
`postgres://payloadcms-user:payloadcmsPass@127.0.0.1:5432/payloadcms-db`

i.e. username, pw, dbName provided in this format:
`postgres://postgresUser:postgresPassword@127.0.0.1:5432/postgresDatabaseName`

Test it out: `psql "postgres://postgresUser:postgresPassword@127.0.0.1:5432/postgresDatabaseName"`

If postgres DB connection string items change-- Simply edit the PayloadCMS .env file's DATABASE_URI

To remove volume:
docker volume rm <DirName>_<volumeDirName>
docker volume rm postgres-for-payload-headlesscms_pg_data_payloadcms

OR if you made it a named volume, just:
docker volume rm <volumeDirName>
docker volume rm pg_data_payloadcms