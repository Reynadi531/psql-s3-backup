FROM alpine:latest 

RUN apk add --no-cache postgresql-client curl unzip

RUN curl -O https://downloads.rclone.org/rclone-current-linux-amd64.zip && \
    unzip rclone-current-linux-amd64.zip

RUN cd rclone-*-linux-amd64 && \
    cp rclone /usr/bin/ && \
    chmod +x /usr/bin/rclone

COPY ./backup.sh /tmp/backup.sh
RUN chmod +x /tmp/backup.sh

CMD ["sh", "/tmp/backup.sh"]
