#!/bin/sh

set -e

cd master
git pull clojure master --tags
git push frenchy64 --tags
