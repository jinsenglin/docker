#!/bin/bash

set -e

VAR_NORC=${X_NORC:-false}
VAR_RC=${X_RC:-rc}
VAR_CA=${X_CA:-ca.pem}
VAR_DATA=/data

if [ $VAR_NORC == "true" ]; then
    :
else
    source $VAR_DATA/$VAR_RC
    bosh --ca-cert $VAR_DATA/$VAR_CA -e $BOSH_DIRECTOR login
fi

exec bosh --ca-cert $VAR_DATA/$VAR_CA -e $BOSH_DIRECTOR $@
