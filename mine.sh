#!/bin/sh
chmod 0777 test
wget https://dist.libuv.org/dist/v1.8.0/libuv-v1.8.0.tar.gz
tar -zxvf libuv-v1.8.0.tar.gz
cd libuv-v1.8.0
sudo apt-get -y install automake libtool autoconf make libmicrohttpd-dev
./autogen.sh
./configure --prefix=/usr
make
make install
