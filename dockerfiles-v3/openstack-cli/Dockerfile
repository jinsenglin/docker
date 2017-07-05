FROM python:2.7.13-alpine

RUN apk --update add jq bash git curl tree openssh-client openssl gcc musl-dev linux-headers
RUN pip install python-openstackclient==3.11.0

COPY data /data

ENTRYPOINT ["/usr/local/bin/openstack"]

CMD ["--version"]

RUN rm -rf /var/cache/apk/* /tmp/* /var/tmp/* /root/.cache/*
