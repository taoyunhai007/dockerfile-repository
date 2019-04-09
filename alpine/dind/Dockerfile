FROM alpine:3.9

MAINTAINER Nianjun Sun "kane.sun@outlook.com"

RUN apk add --no-cache openrc docker

COPY deamon.json /etc/docker/deamon.json

EXPOSE 2375/tcp