# Build

```
docker build -t jimlintw/cli:s3curl -f Dockerfile .
```

# Usage

```
# equivalent to s3curl.pl --version
docker run --rm -e "X_NORC=true" jimlintw/cli:s3curl

# equivalent to s3curl.pl --id $MY_S3_ACCESS_ID --key $MY_S3_SECRET_KEY -- http://192.168.128.3:7480
docker run --rm -v $PWD/data:/data jimlintw/cli:s3curl -- http://192.168.128.3:7480

# equivalent to s3curl.pl --id $MY_S3_ACCESS_ID --key $MY_S3_SECRET_KEY -- http://192.168.128.3:7480
docker run --rm -v $PWD/data:/data -e "X_RC=example-rc" jimlintw/cli:s3curl -- http://192.168.128.3:7480
```

---

# List Bucket

list bucket: /

```
docker run --rm -v $PWD/data:/data -e "X_RC=example-rc" jimlintw/cli:s3curl -- http://192.168.128.3:7480/
```

# Create Bucket

create bucket: /NEW-BUCKET-NAME

```
docker run --rm -v $PWD/data:/data -e "X_RC=example-rc" jimlintw/cli:s3curl --createBucket -- http://192.168.128.3:7480/NEW-BUCKET-NAME
```

# Download Object

download object: /src-bucket-name/src-object-name

```
docker run --rm -v $PWD/data:/data -e "X_RC=example-rc" jimlintw/cli:s3curl -- http://192.168.128.3:7480/src-bucket-name/src-object-name > /data/dest-object-name
```

---

# Issues

* RequestTimeTooSkewed
