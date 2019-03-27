#!/usr/bin/env bash

docker build -t taojintianxia/alpine:3.9 .
docker build -t taojintianxia/alpine:latest .
docker push taojintianxia/alpine:3.9
docker push taojintianxia/alpine:latest
