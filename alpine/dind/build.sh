#!/usr/bin/env bash

docker build -t taojintianxia/alpine-dind:18.09 .
docker build -t taojintianxia/alpine-dind:latest .
docker push taojintianxia/alpine-dind:18.09
docker push taojintianxia/alpine-dind:latest