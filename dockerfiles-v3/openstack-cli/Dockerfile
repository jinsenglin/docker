FROM jimlintw/base:python-alpine

RUN apk --update add gcc musl-dev linux-headers && \
    pip install python-openstackclient==3.11.0 && \
    rm -rf /var/cache/apk/* /tmp/* /var/tmp/* /root/.cache/*

COPY data /data
COPY ENTRYPOINT.sh /ENTRYPOINT.sh

ENTRYPOINT ["/ENTRYPOINT.sh"]
CMD ["--version"]
