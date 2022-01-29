#!/bin/bash
# Start an (n)REPL in the current branch.
#
# For testing purposes only -- restart the REPL to
# reload changes to Clojure's src.
#
# eg., my-branch$ ../repl.sh
#
# See also: https://clojure.org/dev/developing_patches#_run_an_individual_test

set -xe

cp ../deps.edn .
mvn -Dmaven.test.skip=true clean package
./antsetup.sh

clj -M:nrepl:dbg
