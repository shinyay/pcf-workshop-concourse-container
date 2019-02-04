#!/usr/bin/env fish

#./generate-keys.sh

set URL (ipconfig getifaddr en0)
set -x CONCOURSE_EXTERNAL_URL http://$URL:8080

docker-compose -f docker-compose-quickstart.yml up -d

echo $CONCOURSE_EXTERNAL_URL
