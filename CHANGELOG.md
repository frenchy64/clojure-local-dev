# NEXT

- add `*.patch` and `*.diff` to gitignore for branches

# 1.2.0

- require `.patch` or `.diff` file extensions for patches
- add `../open-pr.sh` more easily opening self-PR's
- enforce patches must have `.patch` or `.diff` extension `../format-patch.sh`
- report trailing whitespace in generated patches in `../format-patch.sh`

# 1.1.0

- improve generated `.gitignore` for branches to handle nrepl files
- set Actions build timeout to 5 minutes (useful when testing infinite seqs)
- fix `repl.sh` to fail earlier if compilation fails
- bump from jdk 18 => 19

# 1.0.0

Initial release.
