#!/bin/bash
# Setup Clojure's master branch in a worktree.
#
# First, make sure you've forked Clojure in the same GitHub user as you
# forked this repository from. Then run from this repo's root.
#
# eg., 
#   $ ./clone.sh
#
# Dependencies: Babashka

set -e

GITHUB_USER=$(./github-user.sh)

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
