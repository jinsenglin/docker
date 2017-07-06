#!/bin/bash

set -e

VAR_OPENRC=${OPENRC:-openrc.sh}
VAR_DATA=/data

source $VAR_DATA/$VAR_OPENRC
exec fly $@
