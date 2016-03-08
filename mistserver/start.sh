#!/bin/sh

#/mist/MistController
CFG=/data/mistserver.conf
LOG=/data/mistserver.log

echo "STARTING MISTSERVER...."
./mist/MistController -d -c $CFG -L $LOG
