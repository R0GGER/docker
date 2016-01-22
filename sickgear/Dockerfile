FROM alpine:3.3
MAINTAINER R0GGER

VOLUME ["/data"]
ENTRYPOINT ["docker-entry"]
CMD ["docker-start"]
EXPOSE 8081
ENV OPEN_FILE_LIMIT=32768 \
    PATH=/usr/local/bin:$PATH \
    SB_DATA=/data \
    SB_HOME=/sickgear \
    SB_PORT=8081 \
    SB_USER=root \
    SICKRAGE_CHANNEL=master \
    SICKRAGE_GID=7000 \
    SICKRAGE_UID=7000 \
    SUPERVISOR_LOG_LEVEL=INFO \
    UPDATE_INTERVAL=4h

ADD https://github.com/albertrdixon/tmplnator/releases/download/v2.2.1/t2-linux.tgz /t2.tgz
ADD https://github.com/albertrdixon/escarole/releases/download/v0.1.1/escarole-linux.tgz /es.tgz
COPY bashrc /root/.profile
COPY gitconfig /root/.gitconfig
COPY configs /templates
COPY scripts/* /usr/local/bin/

RUN chmod a+rx /usr/local/bin/* \
    && mkdir -v /torrents /tv_shows /downloads \
    && tar xvzf /t2.tgz -C /bin \
    && tar xvzf /es.tgz -C / \
    && ln -vs /bin/escarole-linux /bin/escarole \
    && echo "http://dl-4.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories \
    && echo "http://dl-4.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories \
    && apk update \
    && apk add \
        bash \
        ca-certificates \
        git \
        py-html5lib \
        py-lxml \
        py-mako \
        py-openssl \
        py-pillow \
        python \
        supervisor \
        unrar \
        unzip \
    && rm -rf /t2.tgz /es.tgz \
    && git clone https://github.com/SickGear/SickGear.git /sickgear
