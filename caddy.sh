#!/bin/bash

set -e

touch /app/caddy/.env
source /app/caddy/.env

# Start reverse-proxy
caddy start || caddy reload --config /app/caddy/Caddyfile
