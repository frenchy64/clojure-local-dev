#!/bin/sh
# run in worktree directory

set -e

PATCH_FILE="$1"

if [ -z $PATCH_FILE ]; then
  echo "Must specify output patch file as first argument"
  exit 1
fi

git format-patch master --stdout -U8 -- . ':!.github/workflows/build.yml' > $PATCH_FILE
