FROM node:latest
MAINTAINER Nianjun Sun <kane.sun@outlook.com>

RUN npm install -g json-server

WORKDIR /data
VOLUME /data

EXPOSE 3000
ADD ./run.sh /run.sh
ENTRYPOINT ["bash", "/run.sh"]

