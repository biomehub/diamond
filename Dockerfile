FROM debian:latest
MAINTAINER lfelipedeoliveira, felipe@lfelipedeoliveira.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y; \
    apt-get clean

# Download & install BLAST

  && curl ftp://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/LATEST/ncbi-blast-2.9.0+-x64-linux.tar.gz \
  && tar -C /opt/blast -zxf ncbi-blast-2.9.0+-x64-linux.tar.gz \
  && rm ncbi-blast-2.9.0+-x64-linux.tar.gz

  ENV PATH /opt/blast/bin:$PATH
  