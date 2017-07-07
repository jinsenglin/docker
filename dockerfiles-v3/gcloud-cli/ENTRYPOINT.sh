#!/bin/bash

set -e

VAR_NORC=${X_NORC:-false}
VAR_RC=${X_RC:-rc}
VAR_DATA=/data

export PATH=$PATH:/google-cloud-sdk/bin

if [ $VAR_NORC == "true" ]; then
    :
else
    VAR_project_id=$(cat $VAR_DATA/$VAR_RC | jq -r '.project_id')
    VAR_client_email=$(cat $VAR_DATA/$VAR_RC | jq -r '.client_email')

    export CLOUDSDK_CORE_PROJECT=$VAR_project_id
    gcloud auth activate-service-account $VAR_client_email --key-file=$VAR_DATA/$VAR_RC
fi

exec gcloud $@
