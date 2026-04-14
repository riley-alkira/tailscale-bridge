FROM tailscale/tailscale:latest

RUN apk update && apk upgrade && \
    apk add --no-cache socat

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]