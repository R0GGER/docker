**WSUSOFFLINE**
Downloads updates and uses SVN to update WSUS Offline to the latest version every 48 hours.

Example running the container:
> docker run -it -e DOWNLOAD=y --name=wsusoffline r0gger/wsusoffline -v </path/to/client>:/wsusoffline/client

For example a network share: 
```-v </path/to/client>:/wsusoffline/client```

Customize config, here an example:
```-v </path/to/setup.sh>:/setup.sh:ro```


  
