Lets see how we can install & configure on a single server

1 - Setup VM using vagrant

```
$ vagrant up
```

2 - SSH to the machine 


```
$ vagrant ssh
```

## Using CLI

- To set a key/value

```
$ etcdctl set Service/port 3000
$ etcdctl set Service/url 192.168.50.30
```

- To get a value

```
$ etcdctl get Service/port
```

- To list all the keys in "Service" Directory

```
$ etcdctl ls Service
```

- To delete a key with its value

```
$ etcdctl rm Service/port
```

- To delete a directory

```
$ etcdctl rm Service
```

## Using API

[![asciicast](https://asciinema.org/a/drteas118d5vmtppb69u36c9r.png)](https://asciinema.org/a/drteas118d5vmtppb69u36c9r)
