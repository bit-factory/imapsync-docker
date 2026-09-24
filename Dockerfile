FROM alpine:latest

RUN echo "https://dl-cdn.alpinelinux.org/alpine/v3.23/community" >> /etc/apk/repositories \
    && apk update \
    && apk add --no-cache bash isync imapsync

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
