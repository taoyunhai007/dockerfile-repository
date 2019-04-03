FROM centos:7

MAINTAINER Nianjun Sun "kane.sun@outlook.com"

RUN yum install -y docker

COPY daemon.json /etc/docker/daemon.json

EXPOSE 2375/tcp

CMD /usr/sbin/init

// TODO this does not work now