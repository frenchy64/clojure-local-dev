#!/bin/sh

set -e

BRANCH="$1"

if [ -z $BRANCH ]; then
  echo "Must specify branch as first argument"
  exit 1
fi

cd master
git worktree add ../$BRANCH $BRANCH

cd ../$BRANCH
git push --set-upstream frenchy64 $BRANCH
