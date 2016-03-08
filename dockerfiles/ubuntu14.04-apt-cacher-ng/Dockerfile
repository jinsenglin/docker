# Sample Reference: https://docs.docker.com/engine/examples/apt-cacher-ng/

# Usage: FROM [image name]
# Reference: http://docs.docker.com/engine/reference/builder/#from
FROM ubuntu:14.04

# Usage: MAINTAINER [name]
# Reference: http://docs.docker.com/engine/reference/builder/#maintainer
MAINTAINER Jim Lin

VOLUME ["/var/cache/apt-cacher-ng"]

# Usage: RUN [command]
# Reference: http://docs.docker.com/engine/reference/builder/#run
RUN apt-get update && apt-get install -y apt-cacher-ng

EXPOSE 3142
CMD chmod 777 /var/cache/apt-cacher-ng && /etc/init.d/apt-cacher-ng start && tail -f /var/log/apt-cacher-ng/*

#
# Build: docker build -t apt-cacher .
# Run: docker run -d -p 3142:3142 --name apt-cacher-run apt-cacher
# Log: docker logs -f apt-cacher-run
#
# and then you can run containers with:
#   docker run -t -i --rm -e http_proxy http://dockerhost:3142/ debian bash
#

# To get your Debian-based containers to use the proxy, you can do one of three things
# 1. Add an apt Proxy setting
# echo 'Acquire::http { Proxy "http://dockerhost:3142"; };' >> /etc/apt/conf.d/01proxy
# 2. Set an environment variable
# http_proxy=http://dockerhost:3142/
# 3. Change your sources.list entries to start with
# http://dockerhost:3142/
