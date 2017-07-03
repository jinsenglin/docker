FROM node:6.11.0-alpine

RUN apk --update add jq bash git curl tree openssh-client

RUN rm -rf /var/cache/apk/*
