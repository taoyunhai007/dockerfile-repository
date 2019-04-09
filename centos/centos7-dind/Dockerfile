FROM taojintianxia/centos7-systemd

MAINTAINER Nianjun Sun "kane.sun@outlook.com"

RUN yum install -y docker && \
    yum clean all && \
    systemctl daemon-reload && \
    systemctl restart docker.service

EXPOSE 2375/tcp

CMD ["/usr/sbin/init"]

