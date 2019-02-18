FROM taojintianxia/centos7-jdk:latest

LABEL maintainer "sunnianjun"

ENV MAVEN_VERSION 3.6.0
ENV LIB_PATH /opt

RUN yum install wget -y &&\
    mkdir -p ${LIB_PATH} &&\
    wget -P ${LIB_PATH} https://www-us.apache.org/dist/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz &&\
    tar -xzvf ${LIB_PATH}/apache-maven-${MAVEN_VERSION}-bin.tar.gz -C ${LIB_PATH} &&\
    ln -s ${LIB_PATH}/apache-maven-${MAVEN_VERSION} ${LIB_PATH}/maven &&\
    rm -rf /${LIB_PATH}/apache-maven-${MAVEN_VERSION}-bin.tar.gz &&\
    yum -y remove wget

## set the maven environemtn
ENV MAVEN_HOME ${LIB_PATH}/maven
ENV PATH ${PATH}:${MAVEN_HOME}/bin

