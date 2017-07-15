#!/bin/bash

set -e

VAR_NORC=${X_NORC:-false}
VAR_RC=${X_RC:-rc}
VAR_DATA=/data

if [ $VAR_NORC == "true" ]; then
    :
else
    export PATH=$PATH:/kafka/bin
    #source $VAR_DATA/$VAR_RC
fi

if [ $1 == "--version" ]; then
    ls -l /kafka
    /kafka/bin/zookeeper-server-start.sh -daemon /kafka/config/zookeeper.properties
    /kafka/bin/kafka-server-start.sh /kafka/config/server.properties
else
    cmd=$1
    shift
    exec kafka-$cmd.sh $@
fi
