FROM centos:centos7.4.1708

LABEL maintainer="taotietianxia@gmail.com"

# install software
RUN yum install -y wget \
&& yum install -y vim \
&& mkdir /usr/local/downloads/ \
&& mkdir /usr/local/software/ \

# install JDK 8
&& wget -P /usr/local/downloads/ --no-cookies --no-check-certificate --header \
"Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u151-b12/e758a0de34e24606bca991d704f6dcbf/jdk-8u151-linux-x64.tar.gz" \
&& tar xvf /usr/local/downloads/jdk-8u151-linux-x64.tar.gz -C /usr/local/software/ \

ENV JAVA_HOME /usr/local/software/jdk1.8.0_151
ENV PATH $PATH:$JAVA_HOME/bin
