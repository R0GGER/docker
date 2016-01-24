#! /bin/sh

mkdir -p /config
mkdir -p /config/cache

cd /SickRage
if [ -f /config/config.ini ]
then
	rm -rf /SickRage/config.ini
	rm -rf /SickRage/sickbeard.db
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
	cp -fr /SickRage/cache/* /config/cache/
#	mv -f /SickRage/autoprocesstv/autoProcessTV.cfg /config/autoProcessTV.cfg
fi
ln -sf /config/config.ini /SickRage/config.ini
ln -sf /config/sickbeard.db* /SickRage/
ln -sf /config/cache /SickRage/cache
#ln -sf /config/autoProcessTV.cfg SickRage/autoprocesstv/autoProcessTV.cfg

/usr/bin/python SickBeard.py
