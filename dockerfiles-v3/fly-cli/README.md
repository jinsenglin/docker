# Build

```
docker build -t jimlintw/cli:fly -f Dockerfile .
```

# Usage

```
# equivalent to fly --version
docker run --rm jimlintw/cli:fly

# equivalent to fly help
docker run --rm jimlintw/cli:fly help
```
