# Build Image

```
docker build -t jimlintw/base:python-alpine -f Dockerfile .
```

# Launch Interactive CLI

```
docker run -it --rm jimlintw/base:python-alpine python
```

# Launch Daemon

```
docker run --name python-http-server -d -p 8000:8000 jimlintw/base:python-alpine python -m SimpleHTTPServer 8000
```
