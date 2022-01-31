#!/bin/bash

../prep-clojure-cli.sh
clojure -M:test-script:dbg
