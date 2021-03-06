#!/bin/bash

docker-compose -f docker-compose-TEST.yml up -d > /dev/null

until $(curl --noproxy 127.0.0.1 --silent --head --insecure --request GET https://127.0.0.1:4444 | grep "302 FOUND" > /dev/null); do
    echo "Waiting for SIP (TEST) to start..."
    sleep 1
done

docker-compose -f docker-compose-TEST.yml down > /dev/null
