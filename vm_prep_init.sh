#!/bin/sh
yum update -y 
curl -sSL https://get.docker.com/ | sh 
service docker start 
systemctl stop firewalld
systemctl disable firewalld
yum install -y epel-release
yum install -y icu patch ruby ruby-devel rubygems gcc git libicu libicu-devel zlib zlib-devel gcc-c++ make
yum install -y nodejs
yum install -y npm
npm install -g azure-cli
curl -L https://github.com/docker/compose/releases/download/1.6.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
export PATH=$PATH:/usr/local/bin/
rm -rf vagrant_1.8.1_x86_64.rpm
wget https://releases.hashicorp.com/vagrant/1.8.1/vagrant_1.8.1_x86_64.rpm
yum install -y vagrant_1.8.1_x86_64.rpm
wget https://copr.fedoraproject.org/coprs/purpleidea/vagrant-libvirt/repo/epel-7/purpleidea-vagrant-libvirt-epel-7.repo -O /etc/yum.repos.d/vagrant-libvirt.repo
yum install -y libvirt
systemctl start libvirtd.service
yum install -y vagrant-libvirt libvirt-devel gcc gcc-c++ ruby-devel python-netaddr git wget unzip libselinux-python ansible
gem install json -v '1.7.7'
systemctl restart libvirtd.service
vagrant plugin install vagrant-libvirt
