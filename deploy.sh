#!/usr/bin/env sh
doas docker stop $(docker ps -a -q)
doas docker container prune -f
doas docker compose up -d --build
