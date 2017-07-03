# Build Image

```
docker build -t python-alpine:latest -f python-alpine.Dockerfile .
docker build -t nodejs-alpine:latest -f nodejs-alpine.Dockerfile .
```

# Launch Interactive CLI

```
docker run -it --rm python-alpine python
docker run -it --rm nodejs-alpine node
```
