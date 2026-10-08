#!/bin/sh
# The executor's RESTful API answers on 9999 (a JSON reply even to an empty request).
set -e
curl -sS --max-time 5 -X POST -H 'Content-Type: application/json' -d '{}' http://executor:9999/beat | grep -q '"code"'
