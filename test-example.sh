#!/bin/bash
# Run non-generative tests for current branch.
#
# my-branch$ ../test-example.sh

../prep-clojure-cli.sh
clojure -M:test-example-script:dbg
