#!/bin/sh
# Apply a patch (from Jira).
#
# Usage:
#  my-branch$ ../apply-patch.sh CLJ-1234-improvement.patch
set -e

PATCH="$1"

if [ -z $PATCH ]; then
  echo "Must specify patch path as first argument"
  exit 1
fi

git am --keep-cr -s --ignore-whitespace < $PATCH
