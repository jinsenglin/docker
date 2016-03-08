# Sample Reference - https://docs.docker.com/engine/examples/running_ssh_service/

# Usage: FROM [image name]
# Reference: http://docs.docker.com/engine/reference/builder/#from
FROM ubuntu:14.04.4

# Usage: MAINTAINER [name]
# Reference: http://docs.docker.com/engine/reference/builder/#maintainer
MAINTAINER Jim Lin

# Usage: RUN [command]
# Reference: http://docs.docker.com/engine/reference/builder/#run
RUN apt-get update && apt-get install -y openssh-server firefox # Update the repository sources list and then install packages
RUN mkdir /var/run/sshd
RUN echo 'root:screencast' | chpasswd
RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

# Usage: ENV <key> <value>
ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

# Usage: EXPOSE <port> [<port>...]
EXPOSE 22

# Usage: CMD ["executable","param1","param2"]
CMD ["/usr/sbin/sshd", "-D"]

# To build this image: docker build -t ubuntu14.04-sshserver-firefox .
# To run this container: docker run -d -P --name sshd_firefox ubuntu14.04-sshserver-firefox
# To get this container port: docker port sshd_firefox
# To get docker machine ip: docker-machine ls
# To ssh login to this container: ssh -X root@<docker machine ip> # password: screencast
