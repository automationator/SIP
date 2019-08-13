#!/bin/bash

docker-compose -f docker-compose-PROD.yml up -d > /dev/null

until $(curl --noproxy 127.0.0.1 --silent --head --insecure --request GET https://127.0.0.1:443 | grep "302 FOUND" > /dev/null); do
    echo "Waiting for SIP (PROD) to start..."
    sleep 1
done

docker-compose -f docker-compose-PROD.yml down > /dev/null
docker-compose -f docker-compose-PROD.yml run web-prod python manage.py setupdb --yes > /dev/null
docker-compose -f docker-compose-PROD.yml run web-prod python manage.py seeddb
docker-compose -f docker-compose-PROD.yml down > /dev/null
