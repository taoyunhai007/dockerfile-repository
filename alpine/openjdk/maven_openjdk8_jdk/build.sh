#!/usr/bin/env bash

docker build -t taojintianxia/alpine-openjdk-maven:3.6.0 .
docker build -t taojintianxia/alpine-openjdk-maven:latest .
docker push taojintianxia/alpine-openjdk-maven:3.6.0
docker push taojintianxia/alpine-openjdk-maven:latest
