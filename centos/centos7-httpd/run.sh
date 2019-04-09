#!/usr/bin/env bash

docker run -d -v /sys/fs/cgroup:/sys/fs/cgroup:ro --privileged=true -p 18080:80 taojintianxia/centos7-httpd