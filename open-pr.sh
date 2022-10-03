#!/bin/bash
# Print a link to open a self pull request for the current branch
#
# Usage:
#   $ ../open-pr.sh
#   https://github.com/frenchy64/clojure/compare/master...frenchy64:inf-multi-args


set -e

branch=$(git rev-parse --abbrev-ref HEAD)
cd ..
user=$(./github-user.sh)

echo "https://github.com/$user/clojure/compare/master...$user:$branch"
