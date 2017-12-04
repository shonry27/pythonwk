#!/bin/bash
sudo yum install yum-utils
# here to build necessary python environment & install missing dependencies you can use --> yum-builddep python 
wget -O https://www.python.org/ftp/python/3.5.0/Python-3.5.0.tgz
gunzip Python-3.5.0.tgz
cd Python-3.5.0
./configure --prefix=/usr/local --enable-shared LDFLAGS="-Wl,-rpath /usr/local/lib"
make
sudo make altinstall
alias python='/usr/local/bin/python3.5'
python --version
