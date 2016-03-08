MistServer (Open Source)
=====================
MistServer is a streaming media server that works well in any streaming environment even a Raspberry Pi! It bridges the gap between dedicated media servers and web servers, performing the best of both worlds when it comes to media streaming delivery.

This Dockerfile installs MistServer for HLS live streaming with Open Broadcaster Software (OBS), FFsplit or Xplit.

Configure
-----------

1. Build: `docker build -t mistserver .`   
2. Run container: `docker run -i -t -p 1935:1935 -p 4242:4242 -p 554:554 -p 8080:8080 -v /my-folder:/data -v /my-folder/video:/data/video --name mistserver mistserver:latest /sbin/my_init`   
3. Login to http://mydomain.tld:4242 and enter a username/password.   
4. Click on "Enable protocols".
5. Enter a Human readable name and set a thick to 'Force JSON file save'.   

Setup a RTMP stream
-----------

1. Go to Streams and click 'New stream'.   
2. Stream name: obs 
3. Source: `push://` or `push://ip-address`   
4. Now go to Open Broadcaster Software and enter to `FMS URL: rtmp://mydomain.tld:1935/live/` and `Play Path: obs`.   

Embed within website
-----------
```
<video id=autoplay width="720" height="360" class="video-js vjs-default-skin vjs-big-play-centered" controls>
  <source src="http://mydomain.tld:8080/hls/stream_name.m3u8" type="application/x-mpegURL">
</video>


<link href="//vjs.zencdn.net/5.7.1/video-js.css" rel="stylesheet">
<script src="//vjs.zencdn.net/5.7.1/video.js"></script>

<!-- download latest version here: https://github.com/videojs/videojs-contrib-hls/releases -->
<script src="//videojs.github.io/videojs-contrib-hls/node_modules/videojs-contrib-hls/dist/videojs.hls.min.js"></script>

<script>
var player = videojs('autoplay');
player.play();
</script>
```
Links
-----------
Website: http://mistserver.org   
Github: https://github.com/DDVTECH/mistserver
