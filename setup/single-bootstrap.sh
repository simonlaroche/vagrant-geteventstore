#!/bin/bash
test -d EventStore-OSS-Linux-v3.0.3 || (
    wget -c http://download.geteventstore.com/binaries/EventStore-OSS-Linux-v3.0.3.tar.gz
    tar -xvzf EventStore-OSS-Linux-v3.0.3.tar.gz
)

cd EventStore-OSS-Linux-v3.0.3

mkdir -p $HOME/es-log/
mkdir -p $HOME/es-db/
./run-node.sh --ext-ip=192.168.50.11 --log $HOME/es-log/ --db=$HOME/es-db/ &

