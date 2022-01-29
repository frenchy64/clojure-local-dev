#!/bin/bash
# Destructively updates your local and your fork's Clojure master branch.
# Assumes clojure/clojure is the source of truth.
#
# Run from clojure-local-dev root.
# eg., $ ./sync-master.sh

set -e

GITHUB_USER=$(./github-user.sh)

cd master
git reset --hard master
git pull clojure master --tags
git push "${GITHUB_USER}" master --tags
