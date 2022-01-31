#!/bin/bash

../prep-clojure-cli.sh
clojure -M:test-example-script:dbg
