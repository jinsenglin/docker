# Build

```
docker build -t jimlintw/cli:az -f Dockerfile .
```

# Usage

```
# equivalent to az --version
docker run --rm -e "X_NORC=true" jimlintw/cli:az

# equivalent to az vm list
docker run --rm -v $PWD/data:/data jimlintw/cli:az vm list

# equivalent to az vm list
docker run --rm -v $PWD/data:/data -e "X_RC=example-rc" jimlintw/cli:az vm list
```
