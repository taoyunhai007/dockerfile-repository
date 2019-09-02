#!/usr/bin/env bash

cd ../conf &&
  docker-compose down &&
  docker-compose up -d
