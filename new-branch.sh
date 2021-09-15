#!/bin/sh

set -e

BRANCH="$1"

if [ -z $BRANCH ]; then
  echo "Must specify branch as first argument"
  exit 1
fi

cd master
git pull clojure master
git worktree add ../$BRANCH -b $BRANCH master

cd ../$BRANCH
mkdir -p .github/workflows
cp ../build.yml .github/workflows
git add .github/workflows/build.yml
git commit -m "Add Actions build"
