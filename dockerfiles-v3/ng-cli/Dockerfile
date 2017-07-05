FROM node:6.11.0-alpine

RUN apk --update add jq bash git curl tree openssh-client openssl
RUN npm install -g @angular/cli

COPY data /data
COPY ENTRYPOINT.sh /ENTRYPOINT.sh

ENTRYPOINT ["/ENTRYPOINT.sh"]
CMD ["--version"]

RUN rm -rf /var/cache/apk/* /tmp/* /var/tmp/*
