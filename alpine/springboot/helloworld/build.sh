#!/usr/bin/env bash

docker build -t taojintianxia/alpine-springboot-helloworld:1.0 .
docker build -t taojintianxia/alpine-springboot-helloworld:latest .
#docker push taojintianxia/alpine-springboot-helloworld:1.0
#docker push taojintianxia/alpine-springboot-helloworld:latest
