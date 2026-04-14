#!/bin/sh

echo "Starting socat: ${LISTEN_PORT} -> ${TARGET_HOST}:${TARGET_PORT}"
socat TCP-LISTEN:${LISTEN_PORT},bind=0.0.0.0,fork TCP:${TARGET_HOST}:${TARGET_PORT} &
echo "socat started with PID $!"

exec /usr/local/bin/containerboot