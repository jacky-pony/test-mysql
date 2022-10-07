FROM centos:centos7

USER root
WORKDIR /

RUN yum update -y
RUN yum install -y rpmdevtools make gcc-c++ bison flex
RUN yum install -y http://dev.mysql.com/get/mysql57-community-release-el7-11.noarch.rpm
RUN rpm --import https://repo.mysql.com/RPM-GPG-KEY-mysql-2022
RUN yum install -y mysql-community-devel
RUN rpmdev-setuptree
COPY ./pkg /tmp/
# RUN dpkg -i /tmp/pkg/super-smack_1.3.3_amd64.deb || true
