FROM debian:jessie
MAINTAINER R0GGER 

# CREDITS: Paul Liljenberg <liljenberg.paul@gmail.com>

# install
RUN apt-get update && apt-get install -y \
        unzip \
        md5deep \
        wget \
        xmlstarlet \
        cabextract \
        genisoimage \
        subversion

# Adding files and scripts
ADD setup.sh /setup.sh

RUN svn checkout https://svn.wsusoffline.net/svn/wsusoffline/trunk/ wsusoffline/ \
        && chmod +x /wsusoffline/sh/DownloadUpdates.sh

# Mapping
VOLUME ["/wsusoffline"]
ENTRYPOINT ["/setup.sh"]
