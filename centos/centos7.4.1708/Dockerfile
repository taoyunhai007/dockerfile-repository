FROM centos:centos7.4.1708

LABEL maintainer="taotietianxia@gmail.com"

RUN yum install -y wget \
&& mkdir /usr/local/downloads/ \
&& wget -P /usr/local/downloads/ --no-cookies --no-check-certificate --header \
"Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u151-b12/e758a0de34e24606bca991d704f6dcbf/jdk-8u151-linux-x64.tar.gz" \
