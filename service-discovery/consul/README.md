## Consul

Distributed key/value store, which provider service discovery out of the box. On other hand, etcd and Zookeper provide only a primitive key/value storage. So we need to build our own service discovery or use a third party tools like confd & registrator.

## Setup

```
$ vagrant up
$ ansible-playbook -i hosts playbook.yml
```

## Test

- List all agents in the cluster

```
$ curl 192.168.50.11:8500/v1/catalog/nodes | jq '.'
```

- Put a value

```
$ curl -X PUT -d 'some stuff' 192.168.50.11:8500/v1/kv/msg
```

- Get a value

```
$ curl -X GET 192.168.50.11:8500/v1/kv/msg?raw
```
