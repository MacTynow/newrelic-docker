#!/bin/bash

echo license_key=$NEWRELIC_KEY > /nrsysmond.cfg
./nrsysmond -n $NEWRELIC_HOSTNAME -s -d verbose -l /dev/stdout -f