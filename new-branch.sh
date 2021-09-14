#!/bin/sh

set -e

BRANCH="$1"

if [ -z $BRANCH ]; then
  echo "Must specify branch as first argument"
  exit 1
fi

cd master
git pull origin master
git worktree add ../$BRANCH -b $BRANCH master

cd ../$BRANCH
