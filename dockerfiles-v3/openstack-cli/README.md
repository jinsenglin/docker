# Build

```
docker build -t jimlintw/cli:openstack -f Dockerfile .
```

# Usage

```
# equivalent to openstack --version
docker run --rm jimlintw/cli:openstack

# equivalent to openstack server list
docker run --rm -v $PWD/data:/data jimlintw/cli:openstack server list

# equivalent to openstack server list
docker run --rm -v $PWD/data:/data -e "OPENRC=another-openrc.sh" jimlintw/cli:openstack server list
```
