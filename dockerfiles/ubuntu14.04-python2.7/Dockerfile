FROM ubuntu:14.04

# remove several traces of debian python
RUN apt-get purge -y python.*

# http://bugs.python.org/issue19846
# > At the moment, setting "LANG=C" on a Linux system *fundamentally breaks Python 3*, and that's not OK.
ENV LANG C.UTF-8
	
#
RUN apt-get update && apt-get install -y --no-install-recommends \
		python \
		python-pip \
	&& rm -rf /var/lib/apt/lists/*

# install "virtualenv", since the vast majority of users of this image will want it
RUN pip install virtualenv

#
RUN apt-get update && apt-get install -y --no-install-recommends \
		vim \
		unzip \
	&& rm -rf /var/lib/apt/lists/*

COPY pydiction-1.2.3.zip /root/
RUN unzip /root/pydiction-1.2.3.zip

CMD ["python2"]
