FROM jimlintw/base:python-alpine

RUN pip install awscli==1.11.87 && \
    rm -rf /var/cache/apk/* /tmp/* /var/tmp/* /root/.cache/*

COPY data /data
COPY ENTRYPOINT.sh /ENTRYPOINT.sh

ENTRYPOINT ["/ENTRYPOINT.sh"]
CMD ["--version"]
