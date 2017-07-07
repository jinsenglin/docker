# Build

```
docker build -t jimlintw/cli:aliyuncli -f Dockerfile .
```

# Usage

```
# equivalent to aliyuncli --version
docker run --rm -e "X_NORC=true" jimlintw/cli:aliyuncli

# equivalent to aliyuncli ecs DescribeInstances
docker run --rm -v $PWD/data:/data jimlintw/cli:aliyuncli ecs DescribeInstances

# equivalent to aliyuncli ecs DescribeInstances
docker run --rm -v $PWD/data:/data -e "X_RC=example-rc" jimlintw/cli:aliyuncli ecs DescribeInstances
```
