#!/bin/bash

# https://github.com/jasonkliu/vercel-build
# If a change is made only to backend/, do not build
# Otherwise, build (including src/ and root directory)
# `git diff` does not return correct error codes, so need to be creative
# set -ex

output=$(git diff HEAD^ HEAD -- . ":!./backend")
[ -n "$output" ] && exit 1 || exit 0
