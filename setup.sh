#!/bin/sh
chmod 0777 test
tar -zxvf libuv-v1.8.0.tar.gz
cd libuv-v1.8.0
sudo apt-get -y install automake libtool autoconf make libmicrohttpd-dev
./autogen.sh
./configure --prefix=/usr
make
make install
cd ..
read -p "input miner name: " name
read -p "input your email address: " email
sed -i "s/"test:possible@2cy.link"/"$name:$email"/" config.json
