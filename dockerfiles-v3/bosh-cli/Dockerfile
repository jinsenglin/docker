FROM jimlintw/base:alpine

RUN wget https://s3.amazonaws.com/bosh-cli-artifacts/bosh-cli-2.0.1-linux-amd64 -O bosh && \
    chmod +x bosh && \
    mv bosh /usr/local/bin/ && \
    rm -rf /var/cache/apk/* /tmp/* /var/tmp/*

COPY data /data
COPY ENTRYPOINT.sh /ENTRYPOINT.sh

ENTRYPOINT ["/ENTRYPOINT.sh"]
CMD ["--version"]
