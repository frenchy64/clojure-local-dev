#!/bin/sh
# Format a new patch for Jira.
# eg.,
#   clojure-branches$ cd my-clj-branch
#   clojure-branches/my-clj-branch$ ../format-patch.sh

set -e

PATCH_FILE="$1"

if [ -z $PATCH_FILE ]; then
  echo "Must specify output patch file as first argument"
  exit 1
fi

git format-patch master --stdout -U8 -- . ':!.github/workflows/build.yml' ':!deps.edn' ':!.gitignore' ':!src/script/run_test_generative.clj' > $PATCH_FILE
