# Auto-Sub BootstrapBill for Docker
Easy subtitle downloader... 

***Features:***
- Mobile template, automatically detected.
- Multiple folder support, separate folders with a comma. Example: /series, /tv.
- Select which languages you want to allow(Dutch and/or English).
- Select if you want a notification for a sub.
- Select the suffix you want to use for the language (only one suffix can be empty).
- Choose if you want to search for an other language if the dutch sub is not available
- Remove English subtitle when the Dutch subtitle has been downloaded.
- Configure a custom post-process script.

```
docker run -d -i -t \
	--name autosub \
	-p 9960:9960 \
	--restart=unless-stopped \
	-v /path/to/series:/series \
	r0gger/autosub-bootstrapbill
```
