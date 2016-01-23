#!/bin/bash

# opt out for autoupdate
[ "$ADVANCED_DISABLEUPDATES" ] && exit 0

pip-review --local --auto
