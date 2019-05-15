FROM docker:18.09-dind

MAINTAINER Nianjun Sun "kane.sun@outlook.com"

RUN apk add --no-cache openrc docker bash

COPY daemon.json /etc/docker/deamon.json

EXPOSE 2375/tcp