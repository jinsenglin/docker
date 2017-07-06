FROM node:6.11.0-alpine

RUN apk --update add jq bash git curl tree openssh-client openssl
RUN npm install phantomjs@2.1.1 casperjs@1.1.4

COPY ENTRYPOINT.sh /ENTRYPOINT.sh

ENTRYPOINT ["/ENTRYPOINT.sh"]
CMD ["--version"]

RUN rm -rf /var/cache/apk/* /tmp/* /var/tmp/*
