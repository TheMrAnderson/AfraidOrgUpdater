#!/bin/sh

crontab -l | { cat; echo "PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin"; } | crontab -
crontab -l | { cat; echo "*/5 * * * * sleep 9 ; curl -s http://sync.afraid.org/u/$1/ >> /tmp/freedns_domain.log 2>/dev/null"; } | crontab -

crond -f -l 0