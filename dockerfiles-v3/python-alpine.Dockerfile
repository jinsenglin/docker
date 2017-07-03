FROM python:2.7.13-alpine

RUN apk --update add jq bash git curl tree

RUN rm -rf /var/cache/apk/*
