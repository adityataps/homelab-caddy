#!/bin/bash

# Start reverse-proxy
caddy start --config /app/caddy/Caddyfile --envfile /app/caddy/.env --watch
