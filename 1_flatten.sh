#!/bin/bash
set -e
trap 'echo "ERROR: nonzero exit status $? at line $LINENO in $BASH_SOURCE"' ERR

TMPFILE=$(mktemp)
./node_modules/.bin/truffle-flattener _ALPHANU_source.sol > "$TMPFILE"
mv "$TMPFILE" contracts/ALPHANU.sol
