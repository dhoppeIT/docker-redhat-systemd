FROM registry.redhat.io/ubi8/ubi

LABEL maintainer="Dennis Hoppe"

ENV container=docker

RUN yum makecache ; \
    yum upgrade -y ; \
    yum install -y \
        deltarpm \
        iproute \
        python3-devel \
        python3-pip \
        python3-setuptools \
        sudo ; \
    yum clean all

RUN cd /lib/systemd/system/sysinit.target.wants/ ; \
    for i in * ; do [ $i = systemd-tmpfiles-setup.service ] || rm -f $i ; done ; \
    rm -f /lib/systemd/system/multi-user.target.wants/* ; \
    rm -f /etc/systemd/system/*.wants/* ; \
    rm -f /lib/systemd/system/local-fs.target.wants/* ; \
    rm -f /lib/systemd/system/sockets.target.wants/*udev* ; \
    rm -f /lib/systemd/system/sockets.target.wants/*initctl* ; \
    rm -f /lib/systemd/system/basic.target.wants/* ; \
    rm -f /lib/systemd/system/anaconda.target.wants/*

VOLUME ["/sys/fs/cgroup"]

CMD ["/sbin/init"]
