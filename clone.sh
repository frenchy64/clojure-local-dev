#!/bin/bash
# Setup Clojure's master branch in a worktree.
#
# Run from this repo's root.
#
# eg., 
#   $ ./clone.sh
#
# Dependencies: Babashka

GITHUB_USER=$(git ls-remote --get-url origin | bb -i '(some->> *input* first (re-matcher #"git@github.com:(.*)/clojure-local-dev.git") re-find second println)')
#GITHUB_USER=frenchy64

set -e

git -C master pull || git clone https://github.com/clojure/clojure.git --origin clojure --branch master master

cd master

(
  set +e
  # https://stackoverflow.com/a/4709925
  if git remote | grep -Fx "${GITHUB_USER}" ; then
    git remote remove "${GITHUB_USER}"
  fi
  git remote add "${GITHUB_USER}" "git@github.com:${GITHUB_USER}/clojure.git"

  errorCode=$?
  if [ $errorCode -ne 0 ]; then
    echo "ERROR setting up '${GITHUB_USER}' remote, deleting to prevent accidents"
    git remote remove "${GITHUB_USER}"
    exit $errorCode
  fi
  
  git fetch "${GITHUB_USER}"
)
