#!/bin/sh

set -e

BRANCH="$1"

mkdir -p .github/workflows
cp ../build.yml .github/workflows
cp ../deps.edn .
cat ../extra-gitignore >> .gitignore
echo "\n(binding [*err* *out*]\n  (println \"Loading $BRANCH\"))" >> src/clj/clojure/core.clj
git add -f .github/workflows/build.yml deps.edn
