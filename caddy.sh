#!/bin/bash

set -e

# Check if .env exists
if [ ! -f /app/caddy/.env ]; then
   echo ".env file not found!"
   exit 1
fi

# Export .env variables
export "$(grep -v '^#' /app/caddy/.env | xargs)"

# Start reverse-proxy
caddy start || caddy reload --config /app/caddy/Caddyfile
