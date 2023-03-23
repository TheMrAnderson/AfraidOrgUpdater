# Afraid.org Updater

[![Docker Image CI](https://github.com/TheMrAnderson/AfraidOrgUpdater/actions/workflows/docker-image.yml/badge.svg)](https://github.com/TheMrAnderson/AfraidOrgUpdater/actions/workflows/docker-image.yml)

Automatically update the IP address for Afraid.org by using a cron job in the container that runs every 5 minutes. The script was built using the Afraid.org cron script generation. You can check the /tmp/freedns_domain.log file inside the container to verify the update is happening every 5 minutes

## Arguments

- `USER_TOKEN` Afraid.org user token as seen in the end of the URL in the [dynamic v2 update interface](https://freedns.afraid.org/dynamic/v2/). Example: http://sync.afraid.org/u/{USER_TOKEN}/
