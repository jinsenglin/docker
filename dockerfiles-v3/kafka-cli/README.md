# Build

```
docker build -t jimlintw/cli:kafka -f Dockerfile .
```

# Usage

```
# show version and start kafka server using zookeeper in the same container (then use ctrl + c to detach)
docker run --rm -e "X_NORC=true" -t -p 9092:9092 -p 2181:2181 jimlintw/cli:kafka

# equivalent to kafka-server-start.sh /data/config/server.properties.v2 (start kafka server using zookeeper in the another container (then use ctrl + c to detach))
docker run --rm -e "X_NORC=true" -t -p 9092:9092 jimlintw/cli:kafka server-start /data/config/server.properties.v2

# equivalent to kafka-topics.sh --list --zookeeper 172.17.0.1:2181
docker run --rm -v $PWD/data:/data jimlintw/cli:kafka topics --list --zookeeper 172.17.0.1:2181

# equivalent to kafka-topics.sh --list --zookeeper 172.17.0.1:2181
docker run --rm -v $PWD/data:/data -e "X_RC=example-rc" jimlintw/cli:kafka topics --list --zookeeper 172.17.0.1:2181

```

# Create Topic

```
docker run --rm -v $PWD/data:/data jimlintw/cli:kafka topics --create --zookeeper 172.17.0.1:2181 --replication-factor 1 --partitions 1 --topic test
```

# List Topic

```
docker run --rm -v $PWD/data:/data jimlintw/cli:kafka topics --list --zookeeper 172.17.0.1:2181
```

# Produce Message

```
docker run -it --rm -v $PWD/data:/data jimlintw/cli:kafka console-producer --broker-list 172.17.0.1:9092 --topic test
```

# Consume Message

```
docker run -it --rm -v $PWD/data:/data jimlintw/cli:kafka console-consumer --bootstrap-server 172.17.0.1:9092 --topic test --from-beginning
```

---

# Program with Python

Launch a Python Container

```
docker run -it --rm jimlintw/base:python-alpine bash
```

In Python Container, Install Library and Connect to Kafka Server

```
pip install kafka-python==1.3.3

>>> from kafka import KafkaProducer
>>> producer = KafkaProducer(bootstrap_servers='172.17.0.1:9092')
>>> producer.send('test', b'some_message_bytes')

>>> from kafka import KafkaConsumer
>>> consumer = KafkaConsumer(bootstrap_servers='172.17.0.1:9092', auto_offset_reset='earliest')
>>> consumer.subscribe(['test'])
>>> for message in consumer:
>>>     print (message)
```

More kafka-python Client Examples, See http://www.biglittleant.cn/2016/12/28/kafka-python/
