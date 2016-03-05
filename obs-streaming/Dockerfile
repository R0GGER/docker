FROM ubuntu:latest

ENV DEBIAN_FRONTEND noninteractive
ENV PATH=$PATH:/usr/local/nginx/sbin
ENV NGINX_VERSION 1.9.10
ENV RTMP_VERSION 1.1.7

EXPOSE 1935
EXPOSE 80

# create directories
RUN mkdir /src && mkdir /config && mkdir /logs && mkdir /data && mkdir /static

# update and upgrade packages
RUN apt-get update && apt-get upgrade -y && apt-get clean
RUN apt-get install -y build-essential wget htop nano

# ffmpeg
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:mc3man/trusty-media
RUN apt-get update
RUN apt-get install -y ffmpeg

# nginx dependencies
RUN apt-get install -y libpcre3-dev zlib1g-dev libssl-dev

# get nginx source
RUN cd /src && wget http://nginx.org/download/nginx-${NGINX_VERSION}.tar.gz && tar zxf nginx-${NGINX_VERSION}.tar.gz && rm nginx-${NGINX_VERSION}.tar.gz

# get nginx-rtmp module
RUN cd /src && wget https://github.com/arut/nginx-rtmp-module/archive/v${RTMP_VERSION}.tar.gz && tar zxf v${RTMP_VERSION}.tar.gz && rm v${RTMP_VERSION}.tar.gz

# compile nginx
RUN cd /src/nginx-${NGINX_VERSION} && ./configure --add-module=/src/nginx-rtmp-module-${RTMP_VERSION} --conf-path=/config/nginx.conf --error-log-path=/logs/error.log --http-log-path=/logs/access.log
RUN cd /src/nginx-${NGINX_VERSION} && make && make install

ADD nginx.conf /config/nginx.conf
ADD static /static

CMD "nginx"
