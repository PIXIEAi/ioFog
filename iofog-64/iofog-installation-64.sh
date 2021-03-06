#!/bin/sh

wget https://github.com/eclipse-iofog/iofogctl/archive/v2.0.3.tar.gz
tar -xzf v2.0.3.tar.gz
cd iofogctl-2.0.3
sudo tar -C /usr/local/ -xzf go1.15.7.linux-arm64.tar.gz
PATH=$PATH:/usr/local/go/bin
GOPATH=$HOME/go
source ~/.profile
sudo apt install golang-rice
wget https://github.com/PIXIEAi/ioFog/blob/main/Makefile
make build
cd bin
sudo cp iofogctl /usr/local/bin/.
