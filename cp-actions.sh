#!/bin/sh

set -e

mkdir -p .github/workflows
cp ../build.yml .github/workflows
cp ../deps.edn .
cat ../extra-gitignore >> .gitignore
git add -f .github/workflows/build.yml deps.edn
