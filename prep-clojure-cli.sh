#!/bin/bash

cp ../deps.edn .
mvn -Dmaven.test.skip=true clean package
./antsetup.sh
ant compile-tests
