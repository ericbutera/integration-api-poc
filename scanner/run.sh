#!/bin/bash

API_URL="${API_URL:-http://localhost:8080}"

curl \
    -H "Content-Type: application/json" \
    --data @data/domain.json \
    ${API_URL}
