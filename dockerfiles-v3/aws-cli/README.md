# Build

```
docker build -t jimlintw/cli:aws -f Dockerfile .
```

# Usage

```
# equivalent to aws --version
docker run --rm -e "X_NORC=true" jimlintw/cli:aws

# equivalent to aws ec2 describe-instances
docker run --rm -v $PWD/data:/data jimlintw/cli:aws ec2 describe-instances

# equivalent to aws ecs DescribeInstances
docker run --rm -v $PWD/data:/data -e "X_RC=example-rc" jimlintw/cli:aws ec2 describe-instances
```
