#!/bin/sh


apt-get update
apt-get install python3-pip jq -y
pip3 install asciinema -y

wget https://github.com/coreos/etcd/releases/download/v3.1.2/etcd-v3.1.2-linux-amd64.tar.gz
tar -xvf etcd-v3.1.2-linux-amd64.tar.gz
rm -r etcd-v3.1.2-linux-amd64.tar.gz
mv etcd-v3.1.2-linux-amd64/etcd* /usr/local/bin/
