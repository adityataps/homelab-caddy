#!/bin/bash

set -e

# Symlink config files
touch /app/caddy.env
ln -sf /app/caddy/.env /etc/caddy/.env
ln -sf /app/caddy/Caddyfile /etc/caddy/Caddyfile

# Copy Caddy root CA self-signed cert to mounted volume
mkdir -p /mnt/homelab/network/caddy/cert || {
  echo "Failed to create directory for storing Caddy self-signed cert";
  exit 1;
}
cp /var/lib/caddy/.local/share/caddy/pki/authorities/local/root.crt /mnt/homelab/network/caddy/cert/root.crt

caddy start --envfile /etc/caddy/.env -w || caddy reload
