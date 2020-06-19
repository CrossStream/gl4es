FROM debian:latest
LABEL maintainer="Philippe Coval (rzr@users.sf.net)"

RUN echo "# Setup"   && set -x   && apt-get update   && apt-get install -y     build-essential     cmake     devscripts     git     make   && sync

ENV project TODO
ENV project gl4es
ENV workdir /usr/local/opt/${project}/src/${project}
ADD . ${workdir}

WORKDIR ${workdir}

RUN echo "# Building"   && set -x   && make -f debian/Makefile     sudo=""     project=${project}     rule/setup     rule/tarball     rule/debuild   && sync

