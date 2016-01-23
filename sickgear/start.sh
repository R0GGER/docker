#! /bin/sh

mkdir -p /config
mkdir -p /config/cache

cd /SickGear
if [ -f /config/config.ini ]
then
	rm -rf /SickGear/config.ini
	rm -rf /SickGear/sickbeard.db
	rm -rf /config/sickbeard.db.v32
	rm -rf /config/sickbeard.db.v33
	rm -rf /config/sickbeard.db.v34
	rm -rf /config/sickbeard.db.v35
	rm -rf /config/sickbeard.db.v36
	rm -rf /config/sickbeard.db.v37
	rm -rf /config/sickbeard.db.v38
	rm -rf /config/sickbeard.db.v39
	rm -rf /config/sickbeard.db.v40
	rm -rf /config/sickbeard.db.v41
	rm -rf /config/sickbeard.db.v42
	rm -rf /config/sickbeard.db.v43
	rm -rf /config/sickbeard.db.v44
else
	touch /config/config.ini
	touch /config/sickbeard.db
	touch /config/sickbeard.db.v32
	touch /config/sickbeard.db.v33
	touch /config/sickbeard.db.v34
	touch /config/sickbeard.db.v35
	touch /config/sickbeard.db.v36
	touch /config/sickbeard.db.v37
	touch /config/sickbeard.db.v38
	touch /config/sickbeard.db.v39
	touch /config/sickbeard.db.v40
	touch /config/sickbeard.db.v41
	touch /config/sickbeard.db.v42
	touch /config/sickbeard.db.v43
	touch /config/sickbeard.db.v44
	cp -fr /SickGear/cache/* /config/cache/
#	mv -f /SickGear/autoprocesstv/autoProcessTV.cfg /config/autoProcessTV.cfg
fi
ln -sf /config/config.ini /SickGear/config.ini
ln -sf /config/sickbeard.db* /SickGear/
#ln -sf /config/cache /SickGear/cache
#ln -sf /config/autoProcessTV.cfg SickGear/autoprocesstv/autoProcessTV.cfg

/usr/bin/python SickBeard.py
