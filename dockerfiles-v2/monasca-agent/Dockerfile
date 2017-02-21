# Build
#
#  docker build -t monasca-agent .
#
# Run
#
#  docker run -d -e "u=monasca" -e "p=nomoresecret" -e "pn=service" -e "ku=http://192.168.120.226:35357/v3" monasca-agent
#
FROM python:2.7.12

MAINTAINER Jim Lin

RUN apt-get update && pip install monasca-agent==1.6.0

CMD monasca-setup --username $u --password $p --project_name $pn --keystone_url $ku --system_only && while true; do echo 1; sleep 1; done
