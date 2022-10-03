#!/bin/sh

set -e

BRANCH="$1"

if [ -z $BRANCH ]; then
  echo "Must specify branch as first argument"
  exit 1
fi

if [ ! -d "master" ]; then
  ./clone.sh
fi
cd master
git pull clojure master || true
git worktree add ../$BRANCH -b $BRANCH master

cd ../$BRANCH
../cp-actions.sh
git commit -m "Add Actions build and deps.edn"
