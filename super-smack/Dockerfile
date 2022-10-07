FROM ubuntu:xenial

USER root
WORKDIR /

RUN apt-get update && \
    apt-get install -y debhelper bison flex libmysqlclient-dev
COPY ./pkg /tmp/pkg
RUN dpkg -i /tmp/pkg/super-smack_1.3.3_amd64.deb
