# jrsj-report-template

Latex template for JRSJ

based on http://www.rsj.or.jp/jrsj/for_authors/stylefile/

[![Build Status](https://travis-ci.org/furushchev/jrsj-report-template.svg)](https://travis-ci.org/furushchev/jrsj-report-template)

### 1. Build

  ```bash
  latexmk
  ```

### 2. Build using docker

  ```bash
  docker run --rm -v $(pwd):/workspace furushchev/latex
  ```

### 3. Cleanup


  ```bash
  latexmk -C
  ```

### 4. Release pdf

- Install [Travis Command Line Tool](https://github.com/travis-ci/travis.rb#installation)
- Enable Travis

  ```bash
  travis enable
  travis setup releases --force
  ```

- After `travis` command, configuration like below will be appended to `.travis.yml`.

  ```yaml
  deploy:
    provider: releases
    api_key: "GITHUB OAUTH TOKEN"
    file: main.pdf
    skip_cleanup: true
    on:
      tags: true
  ```

**NOTE** Please make sure you have `skip_cleanup` and `on: tags` is `true`


- Push your tag by `git push --tags`. Then you can watch pdf in github releases.
