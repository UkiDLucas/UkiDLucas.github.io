#!/usr/bin/env bash

# Resolve the repository root based on this file location.
REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

export BUNDLE_FORCE_RUBY_PLATFORM=true
export BUNDLE_PATH="${REPO_ROOT}/vendor/bundle"
export GEM_HOME="${REPO_ROOT}/.gem"
