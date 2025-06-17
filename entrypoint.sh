#!/bin/sh

# Ensure /root/.cache exists for crontab
mkdir -p /root/.cache

(crontab -l 2>/dev/null; echo "PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin") | crontab -
(crontab -l 2>/dev/null; echo "*/5 * * * * sleep 9 ; curl -s http://sync.afraid.org/u/$1/ >> /proc/1/fd/1 2>&1") | crontab -

# Start crond in foreground
crond -f