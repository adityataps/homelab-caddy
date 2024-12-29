#!/bin/bash

set -e

# Start reverse-proxy
caddy start --config /app/caddy/Caddyfile --envfile /app/caddy/.env || caddy reload --config /app/caddy/Caddyfile --envfile /app/caddy/.env
