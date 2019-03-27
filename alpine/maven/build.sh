#!/usr/bin/env bash

docker build -t taojintianxia/alpine-maven:3.6.0 .
docker build -t taojintianxia/alpine-maven:latest .
docker push taojintianxia/alpine-maven:3.6.0
docker push taojintianxia/alpine-maven:latest
