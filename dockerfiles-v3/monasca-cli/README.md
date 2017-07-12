# Build

```
docker build -t jimlintw/cli:monasca -f Dockerfile .
```

# Usage

```
# equivalent to monasca --version
docker run --rm -e "X_NORC=true" jimlintw/cli:monasca

# equivalent to monasca metric-list
docker run --rm -v $PWD/data:/data jimlintw/cli:monasca metric-list

# equivalent to monasca metric-list
docker run --rm -v $PWD/data:/data -e "X_RC=example-rc" jimlintw/cli:monasca metric-list
```
