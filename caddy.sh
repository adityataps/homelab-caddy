#!/bin/bash

set -e

# Check if .env exists
if [ ! -f .env ]; then
   echo ".env file not found!"
   exit 1
fi

# Export .env variables
export "$(grep -v '^#' .env | xargs)"

# Start reverse-proxy
caddy start || caddy reload --config /app/caddy/Caddyfile
