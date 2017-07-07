# Build

```
docker build -t jimlintw/cli:cqlsh -f Dockerfile .
```

# Usage

```
# equivalent to cqlsh --version
docker run --rm -e "X_NORC=true" jimlintw/cli:cqlsh

# equivalent to cqlsh ?
docker run --rm -v $PWD/data:/data jimlintw/cli:cqlsh ?

# equivalent to cqlsh ?
docker run --rm -v $PWD/data:/data -e "X_RC=example-rc" jimlintw/cli:cqlsh ?
```
