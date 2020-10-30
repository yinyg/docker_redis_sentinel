#!/usr/bin/env bash
docker build . -t redis:my-redis-1.0
docker-compose up -d
