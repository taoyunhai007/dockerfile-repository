#!/usr/bin/env bash

docker build -t taojintianxia/duowen-parent-maven:3.5.4 .
docker build -t taojintianxia/duowen-parent-maven:latest .
docker push taojintianxia/duowen-parent-maven:3.5.4
docker push taojintianxia/duowen-parent-maven:latest
