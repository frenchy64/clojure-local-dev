# Clojure local dev

A repo to make Clojure's development process easier for me.

## Setup

1. Clone [this repo](https://github.com/frenchy64/clojure-local-dev) and `cd` into this directory.
2. Create a new file called `github-user.edn` that contains exactly your GitHub user name.
3. Fork [Clojure](https://github.com/clojure/clojure) to the same GitHub user.
4. Run `./clone.sh` to clone your Clojure fork to the `master` folder. Don't develop here! Make new branches (see next section).

## Development

1. Create a new branch with `./new-branch.sh`.
2. Develop branch. Push branch to Clojure fork on GitHub and create a self-PR. Develop until the feature is done and the build passes.
3. In the branch's worktree directory, format a patch via `../format-patch.sh`.
