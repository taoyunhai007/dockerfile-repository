#!/usr/bin/env bash

docker build --rm -t taojintianxia/centos7-httpd:1.0 .
docker build --rm -t taojintianxia/centos7-httpd .

docker push taojintianxia/centos7-httpd:1.0
docker push taojintianxia/centos7-httpd