FROM perl:5.24.1

RUN apt-get update && \
    apt-get install -y jq openssl && \
    apt-get clean && \
    rm -rf /var/cache/apk/* /tmp/* /var/tmp/*
