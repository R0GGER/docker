#!/bin/bash
# CREDITS: Paul Liljenberg <liljenberg.paul@gmail.com>

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
    svn up --force wsusoffline/
    
    # download ms updates
    cd /wsusoffline/sh && ./DownloadUpdates.sh "$SYSTEM" "$LANGUAGE" "$PARAMS"
    cd /wsusoffline/sh && ./DownloadUpdates.sh "$OFFICE" "$LANGUAGE" 
    
    # goto sleep
    echo "Sleeping for $SLEEP before next download."
    sleep "$SLEEP"
done
