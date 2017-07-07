# Build

```
docker build -t jimlintw/cli:openstack -f Dockerfile .
```

# Usage

```
# equivalent to openstack --version
docker run --rm -e "X_NORC=true" jimlintw/cli:openstack

# equivalent to openstack server list
docker run --rm -v $PWD/data:/data jimlintw/cli:openstack server list

# equivalent to openstack server list
docker run --rm -v $PWD/data:/data -e "X_RC=example-rc" jimlintw/cli:openstack server list
```
