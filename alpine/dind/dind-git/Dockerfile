FROM docker:18.09-dind

MAINTAINER Nianjun Sun "kane.sun@outlook.com"

RUN apk add --no-cache \
    		git \
    		openssh-client\
    		openrc

COPY deamon.json /etc/docker/deamon.json

EXPOSE 2375/tcp