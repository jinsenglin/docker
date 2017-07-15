FROM jimlintw/base:jdk-alpine

RUN wget http://apache.stu.edu.tw/zookeeper/zookeeper-3.4.10/zookeeper-3.4.10.tar.gz && \
    tar -zxf zookeeper-3.4.10.tar.gz && \
    rm zookeeper-3.4.10.tar.gz && \
    ln -s /zookeeper-3.4.10 /zookeeper && \
    rm -rf /var/cache/apk/* /tmp/* /var/tmp/*

COPY data /data
COPY ENTRYPOINT.sh /ENTRYPOINT.sh

RUN rm -rf /zookeeper/conf && \
    ln -s /data/conf /zookeeper/conf

ENTRYPOINT ["/ENTRYPOINT.sh"]
CMD ["--version"]
