#!/bin/sh

BRANCH=$1

if [ -z $BRANCH ]; then
  echo "FAIL: Must provide branch to delete"
  exit 1
fi

cd master
git worktree remove $BRANCH
git branch -d $BRANCH
