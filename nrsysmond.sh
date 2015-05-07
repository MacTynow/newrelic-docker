#!/bin/bash

echo license_key=$NEWRELIC_KEY > /nrsysmond.cfg
./nrsysmond -n $(curl http://169.254.169.254/latest/meta-data/hostname) -s -l /dev/stdout -f -c ./nrsysmond.cfg