FROM alpine:latest 

RUN apk add --no-cache postgresql-client rclone 

COPY ./backup.sh /tmp/backup.sh
RUN chmod +x /tmp/backup.sh

CMD ["sh", "/tmp/backup.sh"]
