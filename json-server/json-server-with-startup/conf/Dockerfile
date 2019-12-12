FROM node:13-alpine
MAINTAINER Nianjun Sun <kane.sun@outlook.com>

RUN apk update \
        && apk upgrade \
        && apk add --no-cache bash \
        bash-doc \
        bash-completion \
        && rm -rf /var/cache/apk/* \
        && /bin/bash
RUN npm install -g --production json-server

WORKDIR /data
VOLUME /data

EXPOSE 80
ADD ../../json-server-with-startup/conf/run.sh /run.sh
ENTRYPOINT ["bash", "/run.sh"]

