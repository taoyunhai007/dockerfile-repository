FROM centos7-docker:latest

LABEL maintainer "sunnianjun"

ENV LIB_PATH /opt
ENV JAVA_VERSION_MAJOR 8
ENV JAVA_VERSION_MINOR 201
ENV JAVA_VERSION_BUILD 09
ENV JAVA_PACKAGE       jdk
ENV JAVA_URL_ELEMENT   42970487e3af4f5aa5bca3f542482c60

RUN yum install wget -y &&\
    mkdir -p ${LIB_PATH} &&\
    wget -P ${LIB_PATH} -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-b${JAVA_VERSION_BUILD}/${JAVA_URL_ELEMENT}/${JAVA_PACKAGE}-${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-linux-x64.tar.gz &&\
    tar -xzvf ${LIB_PATH}/jdk-${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-linux-x64.tar.gz -C ${LIB_PATH} &&\
    ln -s ${LIB_PATH}/jdk1.${JAVA_VERSION_MAJOR}.0_${JAVA_VERSION_MINOR} ${LIB_PATH}/jdk &&\
    rm -rf ${LIB_PATH}/jdk-${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-linux-x64.tar.gz &&\
    yum -y remove wget

## set the jdk environemtn
ENV JAVA_HOME ${LIB_PATH}/jdk
ENV PATH ${PATH}:${JAVA_HOME}/bin

