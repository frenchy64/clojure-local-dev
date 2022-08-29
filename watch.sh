#!/bin/bash
# Run kaocha test watcher. Must be run at branch root.
#
# eg., ../watch.sh

set -xe
../prep-clojure-cli.sh
clojure -X:kaocha:dbg
