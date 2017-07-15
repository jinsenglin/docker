# Build

```
docker build -t jimlintw/cli:zk -f Dockerfile .
```

# Usage

```
# show version and start zookeeper server (then use ctrl + c to detach)
docker run --rm -e "X_NORC=true" -t -p 2181:2181 jimlintw/cli:zk

# equivalent to zkCli.sh -server 172.17.0.1:2181 ls /
docker run --rm -v $PWD/data:/data jimlintw/cli:zk -server 172.17.0.1:2181 ls /

# equivalent to zkCli.sh -server 172.17.0.1:2181 ls /
docker run --rm -v $PWD/data:/data -e "X_RC=example-rc" jimlintw/cli:zk -server 172.17.0.1:2181 ls /
```
