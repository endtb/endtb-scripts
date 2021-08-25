#!/bin/bash

set +x

install_packages(){
        yum -y install epel-release
        yum -y update
        yum -y install wget unzip vim python-pip python-devel
        yum install -y PyYAML python-crypto2.6 python-httplib2 python-jinja2-26 python-keyczar python-paramiko python-simplejson python-six sshpass
}

install_click(){
        wget https://bamboo.pih-emr.org:81/endtb/python/Click-7.0.tar.gz -P /tmp
        cd /tmp
        tar -xvf Click-7.0.tar.gz
        cd Click-7.0
        python setup.py install

}

install_ansible(){
        rpm -i https://bamboo.pih-emr.org:81/bahmni-repo/ansible-2.2.0.0-3.el6.noarch.rpm
}

install_packages
install_click
install_ansible
