#!/bin/bash

args="$@"

args="$@ "

file=/data/db.json
if [ -f $file ]; then
    echo "Found db.json, trying to open"
    args="$args db.json"
fi

file=/data/file.js
if [ -f $file ]; then
    echo "Found file.js seed file, trying to open"
    args="$args file.js"
fi

file=/data/routes.json
if [ -f $file ]; then
    echo "Found routes.json, trying to open"
    args="$args --routes routes.json"
fi

echo "args : " $args

json-server $args
