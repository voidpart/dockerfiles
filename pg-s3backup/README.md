# Backup postgres database to s3

## Required environment variables

- PGDATABASE
- PGHOST
- PGPASSWORD
- PGUSER
- S3_PATH (s3://<bucket>/<path to file>)

## Cron config

By default image backups database every day at 00:00.
You can change this behaviour by specifying CRON_CONFIG env.

## Image commands

`backup` - backups database

`restore` - restores database
