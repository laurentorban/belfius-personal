#!/bin/bash

set -euo pipefail

TOKEN="$(security find-generic-password \
  -a "$USER" \
  -s "vpsnet-belfius-ddns" \
  -w)"

curl -fsS -X POST https://api.vpsnet.com/dns/update \
  -H "X-DDNS-Token: ${TOKEN}" \
  -d "hostname=belfius.laurentorban.be&ip=auto"

