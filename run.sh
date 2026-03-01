#!/usr/bin/env bash
set -euo pipefail

export BUNDLE_FORCE_RUBY_PLATFORM=true
export BUNDLE_PATH=vendor/bundle
export GEM_HOME="$PWD/.gem"

bundle exec jekyll serve -l -H localhost
