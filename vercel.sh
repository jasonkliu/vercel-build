#!/bin/bash

# If a change is made only to backend/, do not build
# Otherwise, build (including src/ and root directory)
# `git diff` doesn't return correct error codes, so need to be creative
# git diff HEAD^ HEAD --quiet -- ./backend/

set -ex

check_diff() {
    # git diff HEAD^ HEAD -- ./backend/
    # [ -n "$(git diff HEAD^ HEAD -- ./backend/)" ] && echo "yes"
    # echo $?
    echo $PWD
    git diff HEAD^ HEAD -- . ":!./backend"
    echo $?
}


cd 1_onlyfolder/
check_diff
cd ../

cd 2_outsidefolder/
check_diff
cd ../

cd 3_both/
check_diff
cd ../

