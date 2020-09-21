# Nimbasepkg

A template for nim packages. Just click `use template` or 
```
git clone https://github.com/stisa/nimbasepkg
```

Includes:
* nimble file with `docs` and `examples` tasks
* GitHub Actions
  - run the tests when `src` or `tests` changes
  - generate the docs and examples when files in `docs` and `examples` change
  - build when `src` changes for nim devel, stable and `1.2.0` (only useful for packages with `bin`)
  - run `nim check nimtemplate.nim`, same as the build action but works for library packages too
  - automatically add a tag when a increase in the  `.nimble` file `version` is detected
* Directory structure:
  - `src` and a public `nimtemplate/common.nim` for package code
  - `tests` directory
  - `examples` directory
  - `docs` directory
* MIT license (please _do_ write your own name in the attribution)
