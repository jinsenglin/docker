#!/bin/bash

set -e

VAR_OPENRC=${OPENRC:-key-file.json}
VAR_DATA=/data

VAR_project_id=$(cat $VAR_DATA/$VAR_OPENRC | jq -r '.project_id')
VAR_client_email=$(cat $VAR_DATA/$VAR_OPENRC | jq -r '.client_email')

export CLOUDSDK_CORE_PROJECT=$VAR_project_id
export PATH=$PATH:/google-cloud-sdk/bin
echo "gcloud auth activate-service-account $VAR_client_email --key-file=$VAR_DATA/$VAR_OPENRC"
gcloud auth activate-service-account $VAR_client_email --key-file=$VAR_DATA/$VAR_OPENRC

exec gcloud $@
