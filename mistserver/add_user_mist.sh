#!/bin/bash

PUID=${PUID:-911}
PGID=${PGID:-911}

if [ ! "$(id -u mist)" -eq "$PUID" ]; then usermod -o -u "$PUID" mist ; fi
if [ ! "$(id -g mist)" -eq "$PGID" ]; then groupmod -o -g "$PGID" mist ; fi

echo "
-------------------------------------
GID/UID
-------------------------------------
User uid:    $(id -u mist)
User gid:    $(id -g mist)
-------------------------------------
"
chown -R mist:mist /app
chown mist:mist /config
