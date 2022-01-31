#!/bin/bash

../prep-clojure-cli.sh
clojure -M:test-generative-script:dbg
