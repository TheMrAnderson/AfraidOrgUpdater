FROM alpine:latest

ADD ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Setup and start container
ENV USER_TOKEN=""
CMD ["sh", "-c", "/entrypoint.sh $USER_TOKEN"]
