FROM taojintianxia/centos7
LABEL maintainer="taotietianxia@gmail.com"
# install software
RUN yum install -y wget gcc make tcl \
&& mkdir /usr/local/downloads/ \
&& mkdir /usr/local/software/ \
# install tcl
&& wget -P /usr/local/downloads/ "http://downloads.sourceforge.net/tcl/tcl8.6.1-src.tar.gz" \
&& tar xvf /usr/local/downloads/tcl8.6.1-src.tar.gz -C /usr/local/software/ \
&& rm -rf /usr/local/downloads/tcl8.6.1-src.tar.gz \
&& cd /usr/local/software/tcl8.6.1/unix \
&& sh configure \
&& make && make install \
# install Redis
&& wget -P /usr/local/downloads/ "http://download.redis.io/releases/redis-3.2.11.tar.gz" \
&& tar xvf /usr/local/downloads/redis-3.2.11.tar.gz -C /usr/local/software/ \
&& rm -rf /usr/local/downloads/redis-3.2.11.tar.gz \
&& cd /usr/local/software/redis-3.2.11 \
&& make && make install \
&& yum -y remove wget \
&& yum -y clean all
ENV JAVA_HOME /usr/local/software/jdk1.8.0_161/
ENV PATH $PATH:$JAVA_HOME/bin/
