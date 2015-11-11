#!/bin/bash

SYSTEM=${SYSTEM:-"all-x64"}
OFFICE=${OFFICE:-"ofc"}
LANGUAGE=${LANGUAGE:-"enu"}
PARAMS=${PARAMS:-"/msse /dotnet /wddefs /wle"}
SLEEP=${SLEEP:-"48h"}

ctrlc()
{
    exit 1   # stop the script
}

trap 'ctrlc' INT

while true; do
    # update wsusoffline version
    cd /wsusoffline && rm -rf /wsusoffline/.svn
    svn checkout https://svn.wsusoffline.net/svn/wsusoffline/trunk/ wsusoffline/
    
    # download ms updates
    cd /wsusoffline/sh && ./DownloadUpdates.sh "$SYSTEM" "$LANGUAGE" "$PARAMS"
    cd /wsusoffline/sh && ./DownloadUpdates.sh "$OFFICE" "$LANGUAGE" 
    
    # goto sleep
    echo "Sleeping for $SLEEP before next download."
    sleep "$SLEEP"
done
