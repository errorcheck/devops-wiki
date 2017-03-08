#!/bin/sh


apt-get update
apt-get install python3-pip jq -y
pip3 install asciinema -y

wget https://github.com/coreos/etcd/releases/download/v3.1.2/etcd-v3.1.2-linux-amd64.tar.gz
tar -xvf etcd-v3.1.2-linux-amd64.tar.gz
mv etcd-v3.1.2-linux-amd64/etcd* /usr/local/bin/
rm -r etcd*

NODE_NAME=service-discovery-$1
NODE_IP=$2
CLUSTER_TOKEN='service-discovery-cluster'

etcd --name $NODE_NAME --initial-advertise-peer-urls http://$NODE_IP:2380 \
  --listen-peer-urls http://$NODE_IP:2380 \
  --listen-client-urls http://$NODE_IP:2379,http://127.0.0.1:2379 \
  --advertise-client-urls http://$NODE_IP:2379 \
  --initial-cluster-token $CLUSTER_TOKEN \
  --initial-cluster service-discovery-node1=http://192.168.50.2:2380,service-discovery-node2=http://192.168.50.3:2380,service-discovery-node3=http://192.168.50.4:2380 \
  --initial-cluster-state new > /tmp/etcd 2>&1 &


wget -qO- https://get.docker.com/ | sh

docker run -d --name registrator \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -h $NODE_NAME \
    gliderlabs/registrator \
    -ip $NODE_IP etcd://$NODE_IP:2379
