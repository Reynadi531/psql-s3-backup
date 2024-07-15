#!/bin/env sh

export filename=$(date +"$BACKUP_PREFIX-%Y-%m-%d-%H-%M-%S.dump")

pg_dump $PG_URL --create --compress=zstd --format=c --file=/tmp/$filename

rclone copy "/tmp/$filename" $NAME_RCLONE_CONFIG:$BUCKET_NAME

rm -rf "/tmp/$filename"

exit