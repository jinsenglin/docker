#!/bin/bash

set -e

VAR_NORC=${X_NORC:-false}
VAR_RC=${X_RC:-rc}
VAR_DATA=/data

if [ $VAR_NORC == "true" ]; then
    :
else
    export PATH=$PATH:/zookeeper/bin
    #source $VAR_DATA/$VAR_RC
fi

if [ $1 == "--version" ]; then
    ls -l /zookeeper
    /zookeeper/bin/zkServer.sh start-foreground
else
    exec zkCli.sh $@
fi
