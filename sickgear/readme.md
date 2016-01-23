# docker SickGear

This is a Dockerfile to set up "SickGear" - (https://github.com/SickGear/SickGear)

SickGear provides management of TV shows and/or Anime, can detect wanted or episodes to upgrade and make use of downloader applications. SickGear is proud to be a descendant of SickBeard and is honoured to be endorsed by one of its former lead developers.
Why Sickgear? More info here: https://github.com/SickGear/SickGear/wiki/History

docker run --restart=always -d -h *your_host_name* -v /*your_config_location*:/config  -v /*your_videos_location*:/data -p 8081:8081 sickgear


EDIT:
- Image runs latest Python 2.7.11 version.
