#!/bin/bash

set -e

VAR_NORC=${X_NORC:-false}
VAR_RC=${X_RC:-rc}
VAR_DATA=/data

if [ $VAR_NORC == "true" ]; then
    exec /data/s3curl.pl $@
else
    source $VAR_DATA/$VAR_RC
    exec /data/s3curl.pl --id $MY_S3_ACCESS_ID --key $MY_S3_SECRET_KEY $@
fi

