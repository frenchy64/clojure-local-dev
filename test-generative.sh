#!/bin/bash
# Run generative tests for current branch.
#
# my-branch$ ../test-generative.sh

../prep-clojure-cli.sh
clojure -M:test-generative-script:dbg
