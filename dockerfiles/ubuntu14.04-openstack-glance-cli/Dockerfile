# Usage: FROM [image name]
# Reference: http://docs.docker.com/engine/reference/builder/#from
FROM ubuntu:14.04

# Usage: MAINTAINER [name]
# Reference: http://docs.docker.com/engine/reference/builder/#maintainer
MAINTAINER Jim Lin

# Usage: RUN [command]
# Reference: http://docs.docker.com/engine/reference/builder/#run
RUN apt-get update # Update the repository sources list

RUN apt-get install -y jq curl openssh-client git # Install packages (.deb)

# Reference: http://docs.openstack.org/developer/glance/installing.html
RUN apt-get install -y glance # Install packages (.deb)
