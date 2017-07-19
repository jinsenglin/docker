# Build

```
docker build -t jimlintw/cli:fab -f Dockerfile .
```

# Usage

```
# equivalent to fab --version
docker run --rm -e "X_NORC=true" jimlintw/cli:fab
```
