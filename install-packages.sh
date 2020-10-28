#!/bin/bash

set +x

install_packages(){
        yum -y install epel-release
        yum -y update
        yum -y install wget unzip vim python-pip python-devel
}

install_click(){
        wget https://bamboo.pih-emr.org:81/endtb/python/Click-7.0.tar.gz -P /tmp
        cd /tmp
        tar -xvf Click-7.0.tar.gz
        cd Click-7.0
        python setup.py install

}

install_packages
install_click