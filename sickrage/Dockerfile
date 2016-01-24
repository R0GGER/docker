FROM r0gger/base:latest
MAINTAINER r0gger

ENV SICKGEAR_VERSION="master"

RUN apt-get -q update && \
    apt-get install -qy --force-yes python-cheetah python-openssl && \
    git clone https://github.com/SickRage/SickRage.git /SickRage/ && \    
    apt-get -y autoremove && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*

VOLUME ["/config", "/data"]

ADD ./start.sh /start.sh
RUN chmod u+x  /start.sh

EXPOSE 8081

CMD ["/start.sh"]

# build from dockerfile:
# docker build -t sickrage .
