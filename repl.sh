#!/bin/bash
# Start an (n)REPL in the current branch. Create your own profile in ~/.clojure/deps.edn
# with an `:nrepl` alias, eg.,
#
# {
#  :aliases {:nrepl {:extra-deps {nrepl/nrepl {:mvn/version "0.9.0"}}
#                    :main-opts ["-m" "nrepl.cmdline" "--interactive"]}}
# }
#
# For testing purposes only -- restart the REPL to
# reload changes to Clojure's src.
#
# eg., my-branch$ ../repl.sh
#
# See also: https://clojure.org/dev/developing_patches#_run_an_individual_test

set -xe

../prep-clojure-cli.sh
clj -M:nrepl:dbg
