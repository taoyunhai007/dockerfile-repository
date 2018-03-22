FROM taojintianxia/centos7
LABEL maintainer="taotietianxia@gmail.com"
# install software
RUN mkdir /usr/local/downloads/ \
&& mkdir /usr/local/software/ \
# install Redis
&& wget -P /usr/local/downloads/ "http://download.redis.io/releases/redis-3.2.11.tar.gz" \
&& tar xvf /usr/local/downloads/redis-3.2.11.tar.gz -C /usr/local/software/ \
&& rm -rf /usr/local/downloads/redis-3.2.11.tar.gz \
&& cd /usr/local/software/redis-3.2.11 \
&& make && make install \
&& yum -y remove wget \
&& yum -y clean all
# expose default port
EXPOSE 6379
# entry point
ENTRYPOINT ["/usr/local/software/redis-3.2.11/src/redis-server","--protected-mode no"]
