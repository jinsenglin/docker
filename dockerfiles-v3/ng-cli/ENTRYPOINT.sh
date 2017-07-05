#!/bin/bash

set -e

VAR_APP=${APP:-}
VAR_DATA=/data

cd $VAR_DATA/$VAR_APP
exec ng $@
