# Build

```
docker build -t fly-cli:latest -f Dockerfile .
```

# Usage

```
# equivalent to fly --version
docker run --rm fly-cli 

# equivalent to fly help
docker run --rm -v fly-cli help
```
