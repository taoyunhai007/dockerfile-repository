FROM openjdk:8u191-jdk-alpine3.9

MAINTAINER Nianjun Sun "kane.sun@outlook.com"

ENV MAVEN_MAJOR_VESION 3
ENV MAVEN_FULL_VESION 3.6.0

RUN apk -U upgrade && \
    apk add wget && \
    wget -P /opt/ https://www-us.apache.org/dist/maven/maven-${MAVEN_MAJOR_VESION}/${MAVEN_FULL_VESION}/binaries/apache-maven-${MAVEN_FULL_VESION}-bin.tar.gz && \
    tar -xzvf /opt/apache-maven-${MAVEN_FULL_VESION}-bin.tar.gz -C /opt && \
    rm -rf /opt/apache-maven-${MAVEN_FULL_VESION}-bin.tar.gz && \
    apk del wget

## set the maven environemtn
ENV MAVEN_HOME /opt/apache-maven-${MAVEN_FULL_VESION}
ENV PATH ${PATH}:${MAVEN_HOME}/bin