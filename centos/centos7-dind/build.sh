#!/usr/bin/env bash

docker build -t taojintianxia/centos7-dind:1.0 .
docker build -t taojintianxia/centos7-dind .

docker push taojintianxia/centos7-dind:1.0
docker push taojintianxia/centos7-dind