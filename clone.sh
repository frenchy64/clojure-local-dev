#!/bin/sh

set -e

git -C main pull || git clone  https://github.com/clojure/clojure.git --origin clojure --branch master master

cd master

(
  set +e
  # https://stackoverflow.com/a/4709925
  if git remote | grep -Fx frenchy64 ; then
    git remote remove frenchy64
  fi
  git remote add frenchy64 git@github.com:frenchy64/clojure.git

  errorCode=$?
  if [ $errorCode -ne 0 ]; then
    echo "ERROR setting up 'frenchy64' remote, deleting to prevent accidents"
    git remote remove frenchy64
    exit $errorCode
  fi
  
  git fetch frenchy64
)
