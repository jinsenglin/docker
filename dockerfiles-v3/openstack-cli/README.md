# Usage

```
# equivalent to openstack help
docker run --rm openstack-cli 

# equivalent to openstack compute list
docker run --rm openstack-cli -v $PWD/data:/data -e "OPENRC=openrc.sh" compute list
```
