# Rule

* All my cli images are based on one of my base images.
* All my base images have following utilities

`bash`

`tar` `unzip`

`wget` `curl` `git` `ssh`

`jq` `sed` `awk` 

`tee` `tree` `openssl`

# Exception

* az-cli

# Tree

* alpine
  * fly
  * bosh
* python-alpine
  * openstack
  * gcloud
  * aliyuncli
  * aws
* nodejs-alpine
  * ng
* nodejs-debian
  * casperjs
