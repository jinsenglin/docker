FROM node:6.11.0

RUN apt-get update && \
    apt-get install -y jq openssl && \
    apt-get clean
RUN npm install -g phantomjs@2.1.1 casperjs@1.1.4

COPY ENTRYPOINT.sh /ENTRYPOINT.sh

ENTRYPOINT ["/ENTRYPOINT.sh"]
CMD ["--version"]

RUN rm -rf /var/cache/apk/* /tmp/* /var/tmp/*
