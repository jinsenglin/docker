# Build

```
docker build -t jimlintw/cli:gcloud -f Dockerfile .
```

# Usage

```
# equivalent to gcloud --version
docker run --rm -e "X_NORC=true" jimlintw/cli:gcloud

# equivalent to gcloud compute instances list
docker run --rm -v $PWD/data:/data jimlintw/cli:gcloud compute instances list

# equivalent to gcloud compute instances list
docker run --rm -v $PWD/data:/data -e "X_RC=example-rc" jimlintw/cli:gcloud compute instances list
