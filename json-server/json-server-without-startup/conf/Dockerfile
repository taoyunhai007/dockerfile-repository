FROM node:latest
MAINTAINER Nianjun Sun <kane.sun@outlook.com>

RUN npm install -g json-server

WORKDIR /data
VOLUME /data

EXPOSE 3000
ENTRYPOINT ["json-server", "--host", "0.0.0.0"]
CMD []

