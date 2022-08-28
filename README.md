# Clojure local dev

A pull-request based workflow for developing and submitting Clojure patches to Jira.

## Features

- one branch per directory via git worktree structure
  - [Create new branch](new-branch.sh)
- [matrix build](build.yml) using GitHub Actions
  - WIP: deploy to clojars
- scripts for local dev
  - [Clojure CLI REPL](repl.sh)
  - [Kaocha test watcher](watch.sh)
  - [Run unit tests](test-example.sh)
  - [Run generative tests](test-generative.sh)
- script to generate patches for Jira
  - [Create patch](format-patch.sh)
  - [Try patch](apply-patch.sh)

## Setup

1. Clone [this repo](https://github.com/frenchy64/clojure-local-dev) and `cd` into this directory.
2. Create a new file called `github-user.edn` that contains exactly your GitHub user name. See `github-user.edn.sample` for an example for user `frenchy64`.
3. Fork [Clojure](https://github.com/clojure/clojure) to the same GitHub user as `github-user.edn`. For example, user `frenchy64` should fork to [frenchy64/clojure](https://github.com/frenchy64/clojure).
4. Run `./clone.sh` to clone your Clojure fork to the `master` folder. Don't develop here! Make new branches (see next section).

## Development

1. Create a new branch with `./new-branch.sh`.
   - eg., `./new-branch.sh CLJ-123456-my-patch && cd CLJ-123456-my-patch`
2. Develop patch in this branch. Push branch to your Clojure fork on GitHub and create a self-PR. Develop until the feature is done and the build passes.
3. In the branch's worktree directory, format a patch via `../format-patch.sh`.
