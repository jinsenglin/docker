# Build Image

```
docker build -t python-alpine-base:latest -f Dockerfile .
```

# Launch Interactive CLI

```
docker run -it --rm python-alpine-base python
```

# Launch Daemon

```
docker run --name python-http-server -d -p 8000:8000 python-alpine-base python -m SimpleHTTPServer 8000
```
