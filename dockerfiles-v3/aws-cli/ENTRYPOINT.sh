#!/bin/bash

set -e

VAR_NORC=${X_NORC:-false}
VAR_RC=${X_RC:-rc}
VAR_DATA=/data

if [ $VAR_NORC == "true" ]; then
    :
else
    export LANG="en_US.UTF-8"
    export LC_CTYPE="en_US.UTF-8"
    export no_proxy='169.254/16, localhost, 127.0.0.1, 192.168.99/16'
    export AWS_CONFIG_FILE=$VAR_DATA/$VAR_RC
fi

exec aws $@
