#!/bin/sh

set -e

cd master
echo "Branches to merge into master:"

# https://stackoverflow.com/a/2860103
(IFS='
'
# trim leading and trailing whitespace via awk: https://unix.stackexchange.com/a/102229
for x in `git branch --no-merged main | awk '{$1=$1};1'`; do
  echo
  echo " ${x}:"
  #https://til.hashrocket.com/posts/18139f4f20-list-different-commits-between-two-branches
  git log --left-right --graph --cherry-pick --oneline ${x}...main
done
)
