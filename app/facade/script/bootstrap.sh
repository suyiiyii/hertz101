#!/bin/bash
CURDIR=$(cd $(dirname $0); pwd)
BinaryName=facade
echo "$CURDIR/bin/${BinaryName}"
exec $CURDIR/bin/${BinaryName}