FROM jimlintw/base:python-alpine

RUN apk add gcc musl-dev linux-headers
RUN pip install python-openstackclient==3.11.0

COPY data /data
COPY ENTRYPOINT.sh /ENTRYPOINT.sh

ENTRYPOINT ["/ENTRYPOINT.sh"]
CMD ["--version"]

RUN rm -rf /var/cache/apk/* /tmp/* /var/tmp/* /root/.cache/*
