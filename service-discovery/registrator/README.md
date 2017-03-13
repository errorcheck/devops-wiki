Registrator automatically registers and deregisters services by inspecting containers as they brought online or stopped

## Setting up with etcd

```
$ docker run -d --name registrator -v /var/run/docker.sock:/tmp/docker.sock -h HOSTNAME gliderlabs/registrator -ip NODE_IP etcd://NODE_IP:2379
```

registrator will intercept docker events, and depending on the event type, put or remove service information to/from etcd.
