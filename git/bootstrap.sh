#!/bin/bash
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
set -e

pushd $SCRIPT_DIR > /dev/null
./setup-misc.sh 2>&1 
./setup-og.sh 2>&1
./setup-quantlib.sh 2>&1
./rebuild-og.sh 2>&1
./rebuild-misc.sh 2>&1
touch ../web/bootstrap.done
popd > /dev/null
