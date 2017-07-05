# Build

```
docker build -t ng-cli:latest -f Dockerfile .
```

# Usage

```
# equivalent to ng --version
docker run --rm ng-cli 

# equivalent to ng new myapp
docker run --rm -v $PWD/data:/data ng-cli new myapp
```
