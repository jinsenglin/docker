FROM jimlintw/base:perl-debian

RUN apt-get update && \
    apt-get install -y libdigest-hmac-perl && \
    apt-get clean && \
    rm -rf /var/cache/apk/* /tmp/* /var/tmp/*

COPY data /data
COPY ENTRYPOINT.sh /ENTRYPOINT.sh

ENTRYPOINT ["/ENTRYPOINT.sh"]
CMD ["--version"]
