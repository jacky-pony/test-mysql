FROM ubuntu:20.04

LABEL maintainer="jacky ma <majianwei168@outlook.com>"

# 安装编译工具
RUN apt-get -y update && \
    apt-get -y install cmake && \
    apt-get -y install bison && \
    apt-get -y install libncurses5-dev && \
    apt-get -y install gcc g++ && \
    apt-get -y install wget
# 下载并解压mysql源码文件
RUN wget -P /tmp https://dev.mysql.com/get/Downloads/MySQL-5.7/mysql-boost-5.7.18.tar.gz && \
    tar -xzvf /tmp/mysql-boost-5.7.18.tar.gz -C /tmp/

# 创建用户和用户组
RUN groupadd mysql && useradd -g mysql mysql

RUN cd /tmp/mysql-5.7.18 && \
    cmake \
    -DCMAKE_INSTALL_PREFIX=/usr/local/mysql \
    -DMYSQL_DATADIR=/usr/local/mysql/data \
    -DWITH_BOOST=./boost/boost_1_59_0 \
    -DSYSCONFDIR=/etc \
    -DWITH_INNOBASE_STORAGE_ENGINE=1 \
    -DWITH_PARTITION_STORAGE_ENGINE=1 \
    -DWITH_FEDERATED_STORAGE_ENGINE=1 \
    -DWITH_BLACKHOLE_STORAGE_ENGINE=1 \
    -DWITH_MYISAM_STORAGE_ENGINE=1 \
    -DWITH_MEMORY_STORAGE_ENGINE=1 \
    -DENABLED_LOCAL_INFILE=1 \
    -DWITH_READLINE=1 \
    -DMYSQL_TCP_PORT=3306 \
    -DEXTRA_CHARSETS=all \
    -DDEFAULT_CHARSET=utf8 \
    -DDEFAULT_COLLATION=utf8_general_ci

RUN cd /tmp/mysql-5.7.18 && make && make install

RUN chown -R mysql /usr/local/mysql && chgrp -R mysql /usr/local/mysql

COPY my.cnf /etc/my.cnf
