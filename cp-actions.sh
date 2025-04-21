#!/bin/sh

set -e

cp ../deps.edn .
cat ../extra-gitignore >> .gitignore
git add -f deps.edn
