#!/bin/bash

set -xe
../prep-clojure-cli.sh
clojure -X:kaocha:dbg
