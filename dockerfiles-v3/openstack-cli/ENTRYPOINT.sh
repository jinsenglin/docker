#!/bin/bash

VAR_OPENRC=${OPENRC:-openrc.sh}
VAR_DATA=/data

source $VAR_DATA/$VAR_OPENRC
exec openstack $1
