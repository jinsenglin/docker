FROM jimlintw/base:alpine

RUN wget https://github.com/concourse/concourse/releases/download/v2.7.0/fly_linux_amd64 && \
    chmod +x fly_linux_amd64 && \
    mv fly_linux_amd64 /usr/local/bin/fly

COPY ENTRYPOINT.sh /ENTRYPOINT.sh

ENTRYPOINT ["/ENTRYPOINT.sh"]
CMD ["--version"]

RUN rm -rf /var/cache/apk/* /tmp/* /var/tmp/*
