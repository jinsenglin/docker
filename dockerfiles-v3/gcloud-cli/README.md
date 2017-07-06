# Build

```
docker build -t jimlintw/cli:gcloud -f Dockerfile .
```

# Usage

```
# equivalent to gcloud --version
docker run --rm jimlintw/cli:gcloud

# equivalent to gcloud compute instances list
docker run --rm -v $PWD/data:/data jimlintw/cli:gcloud compute instances list

# equivalent to gcloud compute instances list
docker run --rm -v $PWD/data:/data -e "OPENRC=another-key-file.json" jimlintw/cli:gcloud compute instances list
```

# TODO

Replace with https://hub.docker.com/r/google/cloud-sdk/
