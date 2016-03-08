FROM phusion/baseimage:0.9.18
MAINTAINER R0GGER

ENV VERSION=2.5.3
ENV HOME /mist
CMD ["/sbin/my_init"]

RUN apt-get update
RUN apt-get install wget -y

RUN mkdir /data /data/video /mist
RUN wget -qO- r.mistserver.org/dl/mistserver_64V${VERSION}.tar.gz | tar xvz -C /mist

RUN mkdir -p /etc/my_init.d
ADD start.sh /etc/my_init.d/start.sh
RUN chmod +x /etc/my_init.d/start.sh

VOLUME /data /data/video
EXPOSE 4242 8080 1935 554

RUN apt-get clean
RUN rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/
