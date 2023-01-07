#!/bin/bash
# Format a new patch for Jira.
# eg.,
#   clojure-branches$ cd my-clj-branch
#   clojure-branches/my-clj-branch$ ../format-patch.sh

set -e

patch_file="$1"

if [ -z $patch_file ]; then
  echo "Must specify output patch file as first argument"
  exit 1
fi

if [[ $patch_file != *.patch ]] && [[ $patch_file != *.diff ]]; then
  echo "Patch file must have .patch or .diff extension"
  exit 1
fi

git format-patch master --stdout -U8 -- . ':!.github/workflows/build.yml' ':!deps.edn' ':!.gitignore' ':!src/script/run_test_generative.clj' > $patch_file

trailing=$(grep --with-filename --line-number '+.*[[:blank:]]$' $patch_file || true)
if [ -n "$trailing" ]; then
  echo "Trailing whitespace detected in ${patch_file}! Fix this before submission."
  #FIXME newlines not printed between lines
  echo $trailing
  exit 1
fi
