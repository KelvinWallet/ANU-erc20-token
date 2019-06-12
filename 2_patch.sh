#!/bin/bash
set -e
trap 'echo "ERROR: nonzero exit status $? at line $LINENO in $BASH_SOURCE"' ERR

sed -i.bak '/_addPauser(msg.sender);/d' contracts/ALPHANU.sol
rm contracts/ALPHANU.sol.bak

sed -i.bak 's/_ALPHANU_source.sol/ALPHANU.sol/' contracts/ALPHANU.sol
rm contracts/ALPHANU.sol.bak
