# Build

```
docker build -t jimlintw/cli:cqlsh -f Dockerfile .
```

# Usage

```
# equivalent to cqlsh --version
docker run --rm -e "X_NORC=true" jimlintw/cli:cqlsh

# equivalent to cqlsh -e 'help'
docker run --rm -v $PWD/data:/data jimlintw/cli:cqlsh -e 'help'

# equivalent to cqlsh -e 'help'
docker run --rm -v $PWD/data:/data -e "X_RC=example-rc" jimlintw/cli:cqlsh -e 'help'
```

# Note

Verified with Cassandra Server 2.2.10
