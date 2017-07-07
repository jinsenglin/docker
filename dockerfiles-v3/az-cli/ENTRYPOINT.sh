#!/bin/bash

set -e

VAR_NORC=${X_NORC:-false}
VAR_RC=${X_RC:-rc}
VAR_DATA=/data

if [ $VAR_NORC == "true" ]; then
    :
else
    source $VAR_DATA/$VAR_RC
    az login --service-principal -u $SERVICE_PRINCIPAL_USERNAME --password $SERVICE_PRINCIPAL_PASSWORD --tenant $TENANT 2>&1 > /dev/null
fi

exec az $@
