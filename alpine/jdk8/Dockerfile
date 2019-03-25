FROM taojintianxia/alpine:3.9

MAINTAINER Nianjun Sun "kane.sun@outlook.com"

ENV LIB_PATH /opt
ENV JAVA_VERSION_MAJOR 8
ENV JAVA_VERSION_MINOR 201
ENV JAVA_VERSION_BUILD 09
ENV JAVA_PACKAGE       jdk
ENV JAVA_URL_ELEMENT   42970487e3af4f5aa5bca3f542482c60
ENV GLIBC_REPO https://github.com/sgerrand/alpine-pkg-glibc
ENV GLIBC_VERSION 2.29-r0

RUN apk -U upgrade && \
    apk add wget libstdc++ curl ca-certificates &&\
    for pkg in glibc-${GLIBC_VERSION} glibc-bin-${GLIBC_VERSION} glibc-i18n-${GLIBC_VERSION}; do curl -sSL ${GLIBC_REPO}/releases/download/${GLIBC_VERSION}/${pkg}.apk -o /tmp/${pkg}.apk; done && \
    apk add --allow-untrusted /tmp/*.apk && \
    rm -v /tmp/*.apk && \
    mkdir -p ${LIB_PATH} &&\
    wget -P ${LIB_PATH} -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-b${JAVA_VERSION_BUILD}/${JAVA_URL_ELEMENT}/${JAVA_PACKAGE}-${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-linux-x64.tar.gz &&\
    tar -xzvf ${LIB_PATH}/jdk-${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-linux-x64.tar.gz -C ${LIB_PATH} &&\
    ln -s ${LIB_PATH}/jdk1.${JAVA_VERSION_MAJOR}.0_${JAVA_VERSION_MINOR} ${LIB_PATH}/jdk &&\
    rm -rf ${LIB_PATH}/jdk-${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-linux-x64.tar.gz &&\
    apk del wget

## set the jdk environemtn
ENV JAVA_HOME ${LIB_PATH}/jdk
ENV PATH ${PATH}:${JAVA_HOME}/bin