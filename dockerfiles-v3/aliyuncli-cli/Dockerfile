FROM jimlintw/base:python-alpine

RUN pip install aliyuncli==2.1.6 aliyun-python-sdk-ecs==3.1.0 && \
    rm -rf /var/cache/apk/* /tmp/* /var/tmp/* /root/.cache/*

COPY data /data
COPY ENTRYPOINT.sh /ENTRYPOINT.sh

ENTRYPOINT ["/ENTRYPOINT.sh"]
CMD ["--version"]
