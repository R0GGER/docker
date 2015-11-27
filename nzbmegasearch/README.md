## NZB Megasearch

Aggregate automatically NZB search results. Easy. Quick. Clean.

NZBmegasearcH collects all your (not only) newznab-based accounts to one place. It is your meta-search engine and your SB, CP unique NZB provider. Mirabis version of [Nzbmegasearch](https://github.com/Mirabis/usntssearch).

## Usage

```
docker create --name=nzbmegasearch -v /etc/localtime:/etc/localtime:ro -v <path to data>:/config -e PGID=<gid> -e PUID=<uid>  -p 5000:5000 linuxserver/nzbmegasearch
```

**Parameters**

* `-p 5000` - the port(s)
* `-v /etc/localtime` for timesync - *optional*
* `-v /config` - where nzbmegasearch should store its config files
* `-e PGID` for GroupID - see below for explanation
* `-e PUID` for UserID - see below for explanation

It is based on phusion-baseimage with ssh removed, for shell access whilst the container is running do `docker exec -it nzbmegasearch /bin/bash`.

### User / Group Identifiers

**TL;DR** - The `PGID` and `PUID` values set the user / group you'd like your container to 'run as' to the host OS. This can be a user you've created or even root (not recommended).

Part of what makes our containers work so well is by allowing you to specify your own `PUID` and `PGID`. This avoids nasty permissions errors with relation to data volumes (`-v` flags). When an application is installed on the host OS it is normally added to the common group called users, Docker apps due to the nature of the technology can't be added to this group. So we added this feature to let you easily choose when running your containers.

## Setting up the application 

Configure via the webserver at http://ip:5000


## Updates

* Upgrade to the latest version simply `docker restart nzbmegasearch`.
* To monitor the logs of the container in realtime `docker logs -f nzbmegasearch`.

***ALL CREDITS GO TO: linuxserver/nzbmegasearch***



