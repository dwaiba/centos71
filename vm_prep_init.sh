yum clean all
yum update -y
rpm --import "https://pgp.mit.edu/pks/lookup?op=get&search=0xee6d536cf7dc86e2d7d56f59a178ac6c6238f52e"
yum install -y yum-utils
yum-config-manager --add-repo https://packages.docker.com/1.10/yum/repo/main/centos/7
yum install -y docker-engine
yum -y install icu patch ruby ruby-devel rubygems gcc git libicu libicu-devel zlib zlib-devel gcc-c++ make wget zip unzip 
yum install -y epel-release
yum install -y nodejs npm
systemctl stop firewalld
systemctl disable firewalld
service docker start
npm install -g azure-cli
yum install -y binutils.x86_64 compat-libcap1.x86_64 gcc.x86_64 gcc-c++.x86_64 glibc.i686 glibc.x86_64 \
glibc-devel.i686 glibc-devel.x86_64 ksh compat-libstdc++-33 libaio.i686 libaio.x86_64 libaio-devel.i686 libaio-devel.x86_64 \
libgcc.i686 libgcc.x86_64 libstdc++.i686 libstdc++.x86_64 libstdc++-devel.i686 libstdc++-devel.x86_64 libXi.i686 libXi.x86_64 \
libXtst.i686 libXtst.x86_64 make.x86_64 sysstat.x86_64
curl -L https://github.com/docker/compose/releases/download/1.6.2/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
curl -L https://github.com/docker/machine/releases/download/v0.7.0-rc1/docker-machine-`uname -s`-`uname -m` >/usr/local/bin/docker-machine && \
chmod +x /usr/local/bin/docker-machine
chmod +x /usr/local/bin/docker-compose
export PATH=$PATH:/usr/local/bin/
openssl req -x509 -nodes -days 365 -newkey rsa:1024 -keyout mycert.pem -out mycert.pem
openssl pkcs12 -export -out mycert.pfx -in mycert.pem -name "csa"
openssl x509 -inform pem -in mycert.pem -outform der -out mycert.cer
