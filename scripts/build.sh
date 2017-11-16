#!/usr/bin/env bash
set -ex

ROOTDIR="$( dirname "$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )" )"
BINDIR=$ROOTDIR/bin

export GOPATH=$ROOTDIR
export GOOS=linux

echo "scripts/build.sh"
echo "$ROOTDIR $BINDIR $GOPATH $GOOS"

go build -ldflags="-s -w" -o $BINDIR/supply apt/supply/cli
