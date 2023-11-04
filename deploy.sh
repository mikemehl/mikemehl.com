#!/usr/bin/env sh
su -c '\
  docker stop $(docker ps -a -q);\
  docker rm $(docker ps -a -q);\
  docker container prune -f;\
  docker image prune -a -f;\
  docker load -i ./backend.tar.gz
  docker compose up -d --build --force-recreate'
