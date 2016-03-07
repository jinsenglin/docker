# Sample Reference - https://docs.docker.com/engine/examples/running_ssh_service/

# Usage: FROM [image name]
# Reference: http://docs.docker.com/engine/reference/builder/#from
FROM ubuntu:14.04.4

# Usage: MAINTAINER [name]
# Reference: http://docs.docker.com/engine/reference/builder/#maintainer
MAINTAINER Jim Lin

# Usage: RUN [command]
# Reference: http://docs.docker.com/engine/reference/builder/#run
RUN apt-get update # Update the repository sources list
RUN apt-get install -y openssh-server # Install packages (.deb)
# RUN apt-get install -y firefox # Install packages (.deb)

# Usage: EXPOSE <port> [<port>...]
EXPOSE 22

# Usage: CMD ["executable","param1","param2"]
CMD ["service", "ssh", "start"]
# CMD ["/usr/sbin/sshd", "-D"]

