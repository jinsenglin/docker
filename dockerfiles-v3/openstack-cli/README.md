# Build

```
docker build -t openstack-cli:latest -f Dockerfile .
```

# Usage

```
# equivalent to openstack --version
docker run --rm openstack-cli 

# equivalent to openstack server list
docker run --rm openstack-cli -v $PWD/data:/data -e "OPENRC=openrc.sh" server list
```
