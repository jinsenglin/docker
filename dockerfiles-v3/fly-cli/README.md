# Build

```
docker build -t jimlintw/cli:fly -f Dockerfile .
```

# Usage

```
# equivalent to fly --version
docker run --rm -e "X_NORC=true" jimlintw/cli:fly

# equivalent to fly -t ccc ps
docker run --rm -v $PWD/data:/data jimlintw/cli:fly -t ccc ps

# equivalent to fly -t ccc ps
docker run --rm -v $PWD/data:/data -e "X_RC=example-rc" jimlintw/cli:fly -t ccc ps
```
