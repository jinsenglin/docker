# Build

```
docker build -t jimlintw/cli:bosh -f Dockerfile .
```

# Usage

```
# equivalent to bosh --version
docker run --rm -e "X_NORC=true" jimlintw/cli:bosh

# equivalent to bosh env
docker run --rm -v $PWD/data:/data jimlintw/cli:bosh env

# equivalent to bosh env
docker run --rm -v $PWD/data:/data -e "X_RC=example-rc" jimlintw/cli:bosh env

# equivalent to bosh env
docker run --rm -v $PWD/data:/data -e "X_RC=example-rc" -e "X_CA=example-ca.pem" jimlintw/cli:bosh env
```
