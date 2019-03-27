#!/usr/bin/env bash

docker build -t taojintianxia/alpine-jdk-maven:3.6.0 .
docker build -t taojintianxia/alpine-jdk-maven:latest .
docker push taojintianxia/alpine-maven:3.6.0
docker push taojintianxia/alpine-maven:latest
