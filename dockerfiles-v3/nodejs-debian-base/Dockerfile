FROM node:6.11.0

RUN apt-get update && \
    apt-get install -y jq openssl sshpass && \
    apt-get clean && \
    rm -rf /var/cache/apk/* /tmp/* /var/tmp/*
