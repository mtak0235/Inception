#!/bin/sh
docker compose down
docker image rm $(docker images | grep -v ID | awk '{print $3}' | tr '\n' ' ')
docker compose build --no-cache
docker compose up --force-recreate