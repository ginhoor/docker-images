FROM centos


#作者

MAINTAINER Ginhoor <ginhoor@gmail.com>

COPY src ./

RUN yum -y install gcc automake autoconf libtool make git vim yum-utils \
    && yum-builddep python -y \
    && tar xf Python-3.7.3.tgz \
    && cd Python-3.7.3 \
    && ./configure \
    && make \
    && make install \
    && cd .. \
    && pip3 install -r requirements.txt \
    && mkdir /Project \
    && cd /Project