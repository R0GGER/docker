More info later.

```
docker run -d -i -t \
	--name autosub \
	-p 9960:9960 \
	--restart=unless-stopped \
	-v /etc/localtime:/etc/localtime:ro \
	-v /path/to/series:/series \
	r0gger/autosub-bootstrapbill
```
