#!/bin/sh
set -e

PATCH="$1"

if [ -z $PATCH ]; then
  echo "Must specify patch path as first argument"
  exit 1
fi

git am --keep-cr -s --ignore-whitespace < $PATCH
