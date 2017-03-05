#!/bin/sh

mkdir -p /opt/bin

wget -L https://github.com/coreos/etcd/releases/download/v3.1.2/etcd-v3.1.2-linux-amd64.tar.gz -o etcd.tar.gz
tar -xvf etcd.tar.gz
rm -r etcd.tar.gz
mv etcd-v3.1.2-linux-amd64/etcd* /opt/bin/
