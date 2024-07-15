# PostgreSQL to S3 backup docker container

How to use:
```bash
docker run --rm \
 -e NAME_RCLONE_CONFIG=r2 \
 -e BUCKET_NAME= \
 -e BACKUP_PREFIX= \
 -e RCLONE_CONFIG_R2_TYPE=s3 \
 -e RCLONE_CONFIG_R2_PROVIDER=Other \
 -e RCLONE_CONFIG_R2_ACCESS_KEY_ID= \
 -e RCLONE_CONFIG_R2_SECRET_ACCESS_KEY= \
 -e RCLONE_CONFIG_R2_ENDPOINT= \ 
 -e RCLONE_CONFIG_R2_ACL=private \
 -e RCLONE_CONFIG_R2_NO_CHECK_BUCKET=true \ 
 -e PG_URL= \
 ghcr.io/reynadi/psql-s3-backup:latest
```