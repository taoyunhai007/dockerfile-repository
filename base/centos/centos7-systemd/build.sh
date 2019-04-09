#!/usr/bin/env bash

docker build -t taojintianxia/centos7-systemd:1.0 .
docker build -t taojintianxia/centos7-systemd .
docker push taojintianxia/centos7-systemd:1.0
docker push taojintianxia/centos7-systemd