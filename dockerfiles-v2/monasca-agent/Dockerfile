# Build
#
#  docker build -t monasca-agent .
#
# Run
#
#  docker run -d monasca-agent
#
FROM python:2.7.12

MAINTAINER Jim Lin

RUN apt-get update && pip install monasca-agent==1.6.0

CMD monasca-setup --username monasca --password nomoresecret --project_name service --keystone_url http://192.168.120.226:35357/v3 --system_only && while true; do echo 1; sleep 1; done
