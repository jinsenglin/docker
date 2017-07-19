#!/bin/bash

set -e

VAR_NORC=${X_NORC:-false}
VAR_RC=${X_RC:-rc}
VAR_DATA=/data

if [ $VAR_NORC == "true" ]; then
    exec fab $@
else
    source $VAR_DATA/$VAR_RC
    exec fab -H $HOST -u $USER -p $PASS -f /data/fabfile.py $@
fi

