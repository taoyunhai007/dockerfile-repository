#!/usr/bin/env bash

wget -N -P ../sql/ https://raw.githubusercontent.com/apache/incubator-shardingsphere-example/dev/src/resources/manual_schema.sql &&\
cd ../conf &&
docker-compose up -d