#!/bin/bash

set -ex

for d in $(find -mindepth 1 -maxdepth 1 -type d)
do
  tag=$(basename $d)
  sudo docker build -t $tag $d
done
