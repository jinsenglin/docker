# Build

```
docker build -t jimlintw/cli:fab -f Dockerfile .
```

# Usage

```
# equivalent to fab --version
docker run --rm -e "X_NORC=true" jimlintw/cli:fab

# equivalent to fab -f /data/fabfile.py hello
docker run --rm -v $PWD/data:/data jimlintw/cli:fab hello
```
