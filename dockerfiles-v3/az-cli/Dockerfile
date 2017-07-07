FROM azuresdk/azure-cli-python:0.2.9

RUN apk --update add jq bash git curl tree openssh-client openssl && \
    rm -rf /var/cache/apk/* /tmp/* /var/tmp/*

COPY data /data
COPY ENTRYPOINT.sh /ENTRYPOINT.sh

ENTRYPOINT ["/ENTRYPOINT.sh"]
CMD ["--version"]
