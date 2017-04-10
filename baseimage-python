FROM linuxserver/baseimage
MAINTAINER sparklyballs <sparklyballs@linuxserver.io>
ENV BASE_APTLIST="libxslt1-dev git-core libffi-dev libffi6 libpython-dev libssl-dev python2.7 python-cherrypy python-lxml python-pip python2.7-dev unrar unzip wget"

#ENV PYTHONIOENCODING="UTF-8"
# install main packages
RUN add-apt-repository ppa:fkrull/deadsnakes-python2.7 && \

apt-get update -q && \
apt-get install $BASE_APTLIST -qy && \

# upgrade python-requests package
curl -o /tmp/requests.tar.gz  -L https://github.com/kennethreitz/requests/tarball/master && \
mkdir -p /tmp/request_source && \
tar xvf /tmp/requests.tar.gz -C /tmp/request_source --strip-components=1 && \
cd /tmp/request_source && \
python setup.py install && \

# upgrade urllib3 package
curl -o /tmp/urllib3.tar.gz -L https://github.com/shazow/urllib3/tarball/master  && \
mkdir -p /tmp/urllib3_source && \
tar xvf /tmp/urllib3.tar.gz -C /tmp/urllib3_source --strip-components=1 && \
cd /tmp/urllib3_source && \
python setup.py install && \

#install pip packages
pip install pip-review && \
pip install -U pip pyopenssl ndg-httpsclient virtualenv && \

# cleanup
apt-get clean -y && \
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


#Update any packages now
RUN pip-review --local --auto
