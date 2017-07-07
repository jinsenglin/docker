FROM jimlintw/base:nodejs-debian

RUN npm install -g phantomjs@2.1.1 casperjs@1.1.4

COPY ENTRYPOINT.sh /ENTRYPOINT.sh

ENTRYPOINT ["/ENTRYPOINT.sh"]
CMD ["--version"]
