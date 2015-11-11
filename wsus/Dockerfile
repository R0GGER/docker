FROM debian:jessie
MAINTAINER R0GGER

# install
RUN apt-get update && apt-get install -y \
        unzip \
        md5deep \
        wget \
        xmlstarlet \
        cabextract \
        genisoimage \
        subversion


RUN wget -O /wsusoffline.zip http://download.wsusoffline.net/wsusoffline102.zip
RUN unzip /wsusoffline.zip \
RUN svn checkout https://svn.wsusoffline.net/svn/wsusoffline/trunk/ wsusoffline/ \
        && rm /wsusoffline.zip \
        && chmod +x /wsusoffline/sh/DownloadUpdates.sh

# Mapping
ADD setup.sh /setup.sh
VOLUME ["/wsusoffline"]
ENTRYPOINT ["/setup.sh"]
