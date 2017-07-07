# Build

```
docker build -t jimlintw/cli:kafka -f Dockerfile .
```

# Usage

```
# show version and start kafka server (then use ctrl + c to detach)
docker run --rm -e "X_NORC=true" -t -p 2181:2181 -p 9092:9092 jimlintw/cli:kafka

# equivalent to kafka-topics.sh --list --zookeeper 172.17.0.1:2181
docker run --rm -v $PWD/data:/data jimlintw/cli:kafka topics --list --zookeeper 172.17.0.1:2181

# equivalent to kafka-topics.sh --list --zookeeper 172.17.0.1:2181
docker run --rm -v $PWD/data:/data -e "X_RC=example-rc" jimlintw/cli:kafka topics --list --zookeeper 172.17.0.1:2181
```

# Create Topic

```
docker run --rm -v $PWD/data:/data jimlintw/cli:kafka topics --create --zookeeper 172.17.0.1:2181 --replication-factor 1 --partitions 1 --topic test
```
