#!/bin/bash

[[ ! -d /config/nzbmega/.git ]] && git clone https://github.com/Mirabis/usntssearch.git /config/nzbmega
cd /config/nzbmega
git pull

chown -R abc:abc /config
