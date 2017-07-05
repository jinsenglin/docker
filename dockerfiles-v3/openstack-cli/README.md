# Build

```
docker build -t openstack-cli:latest -f Dockerfile .
```

# Usage

```
# equivalent to openstack --version
docker run --rm openstack-cli 

# equivalent to openstack server list
docker run --rm -v $PWD/data:/data openstack-cli server list

# equivalent to openstack server list
docker run --rm -v $PWD/data:/data -e "OPENRC=another-openrc.sh" openstack-cli server list
```

# TODO

* verify openrc
