#!/bin/sh -xe
source /docker-lib.sh
start_docker

cd sb-sample-service
docker-compose up -d
sleep 30
docker ps
curl -X POST "http://localhost:18888/api/user/" -H "accept: */*" -H "Content-Type: application/json" -d "{ \"id\": 1, \"name\": \"Mike\"}"
curl -X GET "http://localhost:18888/api/usr/1" -H "accept: */*"
docker-compose down
