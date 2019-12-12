FROM node:13-alpine
MAINTAINER Nianjun Sun <kane.sun@outlook.com>

RUN npm install -g --production json-server && rm -rf /root/.npm /usr/lib/node_modules/npm

WORKDIR /data
VOLUME /data

EXPOSE 80
ENTRYPOINT ["json-server", "--host", "0.0.0.0"]
CMD ["--help"]


