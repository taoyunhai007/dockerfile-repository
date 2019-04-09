#!/usr/bin/env bash

docker run -ti -v /sys/fs/cgroup:/sys/fs/cgroup:ro --privileged=true -p 2375:2375 taojintianxia/centos7-dind