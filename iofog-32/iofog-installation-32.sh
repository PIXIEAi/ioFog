#!/bin/sh

wget https://github.com/eclipse-iofog/iofogctl/archive/v2.0.3.tar.gz
tar -xzf v2.0.3.tar.gz
sudo tar -C /usr/local/ -xzf go1.15.7.linux-armv6l.tar.gz
PATH=$PATH:/usr/local/go/bin
GOPATH=$HOME/go
source ~/.profile
sudo apt install golang-rice
mv Makefile iofogctl-2.0.3/
cd iofogctl-2.0.3
make build
cd bin
sudo cp iofogctl /usr/local/bin/.
