FROM debian:latest
MAINTAINER lfelipedeoliveira, felipe@lfelipedeoliveira.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y; \
    apt-get clean


#RUN apt-get update && apt-get install -y --no-install-recommends \
#    curl \
#    python-minimal=2.7.3-4+deb7u1 \
#    && rm -rf /var/lib/apt/lists/*


# Download & install BLAST

 RUN mkdir /opt/blast \
  && curl ftp://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/LATEST/ncbi-blast-2.9.0+-x64-linux.tar.gz \
   | tar -zxC /opt/blast --strip-components=1
   ENV PATH /opt/blast/bin:$PATH


# set default behaviour

WORKDIR /blast
CMD ["bash"]