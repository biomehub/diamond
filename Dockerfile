FROM debian:latest
MAINTAINER lfelipedeoliveira, felipe@lfelipedeoliveira.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y; \
    apt-get install wget -y; \
    apt-get upgrade; \
    apt-get clean

# Download & install Diamond

 RUN mkdir /opt/diamond \
  && wget http://github.com/bbuchfink/diamond/releases/download/v0.9.24/diamond-linux64.tar.gz \
  && tar -C /opt/diamond -zxf diamond-linux64.tar.gz \
  && rm diamond-linux64.tar.gz

 ENV PATH /opt/diamond:$PATH
