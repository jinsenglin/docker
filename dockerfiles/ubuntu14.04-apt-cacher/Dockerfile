# Sample Reference: https://docs.docker.com/engine/examples/apt-cacher-ng/

# Usage: FROM [image name]
# Reference: http://docs.docker.com/engine/reference/builder/#from
FROM ubuntu:14.04

# Usage: MAINTAINER [name]
# Reference: http://docs.docker.com/engine/reference/builder/#maintainer
MAINTAINER Jim Lin

VOLUME ["/var/cache/apt-cacher"]

# Usage: RUN [command]
# Reference: http://docs.docker.com/engine/reference/builder/#run
RUN apt-get update && apt-get install -y apt-cacher
RUN sed -i 's/#allowed_hosts =/allowed_hosts =/' /etc/apt-cacher/apt-cacher.conf

EXPOSE 3142
CMD chmod 777 /var/cache/apt-cacher && /etc/init.d/apt-cacher start && tail -f /var/log/apt-cacher/*

#
# Build: docker build -t apt-cacher .
# Run: docker run -d -p 3142:3142 --name apt-cacher-run apt-cacher
#
# and then you can run containers with:
#   docker run -t -i --rm -e http_proxy http://dockerhost:3142/ debian bash
#
