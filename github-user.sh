#!/bin/bash
# Print your GitHub user name

#GITHUB_USER=$(git ls-remote --get-url origin | bb -i '(some->> *input* first (re-matcher #"git@github.com:(.*)/clojure-local-dev.git") re-find second println)')
#
#if [[ -z "${GITHUB_USER}" ]]; then
#  echo "Something went wrong inferring your GitHub user."
#  echo "Make sure the `origin` remote of your clojure-local-dev repo"
#  echo "is named git@github.com:<YOUR_GH_USER>/clojure-local-dev.git"
#  exit 1
#fi

GITHUB_USER=$(cat github-user.edn)

if [[ -z "${GITHUB_USER}" ]]; then
  echo "Create a new file called github-user.edn containing just your GitHub user name."
  exit 1
fi

echo "${GITHUB_USER}"
