#!/usr/bin/env fish
./generate-keys.sh
docker-compose up -d

set URL (ipconfig getifaddr en0)
set -x CONCOURSE_EXTERNAL_URL http://$URL:8080
