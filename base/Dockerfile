FROM ubuntu:14.04
MAINTAINER r0gger

ENV DEBIAN_FRONTEND="noninteractive" \
    LANG="en_US.UTF-8" \
    LC_ALL="en_US.UTF-8" \
    LANGUAGE="en_US.UTF-8" \
    TERM="xterm"

RUN sed -i "/^# deb.*multiverse/ s/^# //" /etc/apt/sources.list && \
    apt-get -q update && \
    apt-get install -qy locales && \
    echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen && \
    echo 'en_ZA.UTF-8 UTF-8' >> /etc/locale.gen && \
    locale-gen en_US.UTF-8 && \
    locale-gen en_ZA.UTF-8 && \
    echo "force-unsafe-io" > /etc/dpkg/dpkg.cfg.d/02apt-speedup &&\
    echo "Acquire::http {No-Cache=True;};" > /etc/apt/apt.conf.d/no-cache && \
\
	add-apt-repository ppa:fkrull/deadsnakes-python2.7 && \
	apt-get -q update && \
	apt-get -qy --force-yes dist-upgrade && \
    	apt-get install -qy --force-yes \
        apt-transport-https \
        bzip2 \
        ca-certificates curl \
        dnsutils \
        fping \
        git \
        inetutils-ping \
        nano \
        openssl \
        openssh-server \
        procps psmisc python python-software-properties \
		libxslt1-dev \ 
		git-core \
		libffi-dev \
		libffi6 \
		libpython-dev \
		libssl-dev \
		python2.7 \
		python-cherrypy \
		python-lxml \
		python-pip \
		python2.7-dev \
        	rsync rsyslog \
        	software-properties-common ssl-cert sudo supervisor \
        	tar telnet tmux traceroute tree \
        	wget whois \
        	unrar unzip \
        	vim \
        	xz-utils \
        	zsh && \
\        	
		curl -o /tmp/requests.tar.gz  -L https://github.com/kennethreitz/requests/tarball/master && \
		mkdir -p /tmp/request_source && \
		tar xvf /tmp/requests.tar.gz -C /tmp/request_source --strip-components=1 && \
		cd /tmp/request_source && \
		python setup.py install && \
\		
		curl -o /tmp/urllib3.tar.gz -L https://github.com/shazow/urllib3/tarball/master  && \
		mkdir -p /tmp/urllib3_source && \
		tar xvf /tmp/urllib3.tar.gz -C /tmp/urllib3_source --strip-components=1 && \
		cd /tmp/urllib3_source && \
		python setup.py install && \
\
		pip install pip-review && \
		pip install -U pip pyopenssl ndg-httpsclient virtualenv && \
\		
    apt-get -y autoremove && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*
