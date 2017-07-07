FROM jimlintw/base:python-alpine

RUN wget https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-155.0.0-linux-x86_64.tar.gz && \
    tar -zxf google-cloud-sdk-155.0.0-linux-x86_64.tar.gz && \
    ./google-cloud-sdk/install.sh  && \
    /google-cloud-sdk/bin/gcloud components install kubectl && \
    rm -f google-cloud-sdk-155.0.0-linux-x86_64.tar.gz && \
    rm -rf /var/cache/apk/* /tmp/* /var/tmp/* /root/.cache/*

COPY data /data
COPY ENTRYPOINT.sh /ENTRYPOINT.sh

ENTRYPOINT ["/ENTRYPOINT.sh"]
CMD ["--version"]
