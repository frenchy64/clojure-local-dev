#!/bin/bash
# Prepare Clojure repository for a Clojure CLI invocation. Run in branch directory.
#
# eg., ../prep-clojure-cli.sh

cp ../deps.edn .
mvn -Dmaven.test.skip=true clean package
./antsetup.sh
ant compile-tests
