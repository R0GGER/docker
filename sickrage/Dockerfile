FROM linuxserver/baseimage.python

MAINTAINER R0GGER

# set python to use utf-8 rather than ascii
ENV PYTHONIOENCODING="UTF-8"
ENV SICKRAGEVERSION="https://github.com/SickRage/SickRage/archive/v4.2.0.5.zip"

# build unrar
RUN mkdir -p /tmp/unrar && \
curl -o /tmp/unrarsource.tar.gz -L http://rarlab.com/rar/unrarsrc-5.2.7.tar.gz && \
tar -xvf /tmp/unrarsource.tar.gz -C /tmp/unrar --strip-components=1 && \
cd /tmp/unrar && \
make -f makefile && \
install -v -m755 unrar /usr/bin && \
apt-get clean && rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*

RUN wget -O sickrage.zip $SICKRAGEVERSION && \
	unzip sickrage.zip -d /app && \
	mv /app/SickRage-* /app/sickrage && \
	chown -R abc:abc /app /config && \
	rm -rf sickrage.zip /app/SickRage-4.2.0.5 

# Adding Custom files
ADD services/ /etc/service/
RUN chmod -v +x /etc/service/*/run /etc/my_init.d/*.sh

# Volumes and Ports
VOLUME /config /downloads /tv
EXPOSE 8081

# build from dockerfile:
# docker build -t sickrage .
