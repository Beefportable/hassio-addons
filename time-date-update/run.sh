#!/bin/bash
set -e

CONFIG_PATH=/data/options.json

YEAR=$(jq --raw-output ".year" $CONFIG_PATH)

echo "Year entered is $YEAR"
date
service ntp stop
ntpd -gq
service ntp start
date