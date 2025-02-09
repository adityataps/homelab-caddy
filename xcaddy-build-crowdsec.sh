#!/bin/bash

### This script generates a caddy binary that includes the external plugins for CrowdSec.
### This binary then can be copied with `cp ./caddy $(which caddy)`

# Sourced from https://github.com/hslatman/caddy-crowdsec-bouncer.git
xcaddy build \
 --with github.com/hslatman/caddy-crowdsec-bouncer/http \
 --with github.com/hslatman/caddy-crowdsec-bouncer/layer4 \
 --with github.com/hslatman/caddy-crowdsec-bouncer/appsec
