#!/bin/bash
set -e
trap 'echo "ERROR: nonzero exit status $? at line $LINENO in $BASH_SOURCE"' ERR

./node_modules/.bin/truffle compile
