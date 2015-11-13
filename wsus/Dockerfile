FROM debian:jessie
MAINTAINER R0GGER

ENV APTLIST="unzip md5deep wget xmlstarlet cabextract genisoimage subversion"

# install
RUN apt-get update -q && \
apt-get install \
$APTLIST -qy && \

# cleanup 
apt-get clean -y && \
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN wget -O /wsusoffline.zip http://download.wsusoffline.net/wsusoffline102.zip
RUN unzip /wsusoffline.zip \
RUN svn checkout https://svn.wsusoffline.net/svn/wsusoffline/trunk/ wsusoffline/ \
RUN chmod +x /wsusoffline/sh/DownloadUpdates.sh \
        && rm /wsusoffline.zip

# Mapping
VOLUME ["/wsusoffline"]
ADD setup.sh /setup.sh
ENTRYPOINT ["/setup.sh"]
