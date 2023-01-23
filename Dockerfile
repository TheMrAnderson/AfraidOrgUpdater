FROM alpine:latest

#RUN rm -rf /var/cache/apk/*

# Add the cron job
ENV user_id=""
RUN crontab -l | { cat; echo "PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin"; } | crontab -
RUN crontab -l | { cat; echo "2,7,12,17,22,27,32,37,42,47,52,57 * * * * sleep 9 ; curl -s http://sync.afraid.org/u/$user_id/ >> /tmp/freedns_domain.log 2>/dev/null"; } | crontab -

# Run cron on container startup
CMD ["crond", "-f", "-l", "0"]
