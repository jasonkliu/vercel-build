#!/bin/bash

# If a change is made only to backend/, do not build
# Otherwise, build (including src/ and root directory)
# `git diff` doesn't return correct error codes, so need to be creative

set -ex

check_diff() {
    echo $PWD
    # This works, but gives "yes" for 1 and 3, which is undesirable
    # git diff HEAD^ HEAD -- ./backend/
    # [ -n "$(git diff HEAD^ HEAD -- ./backend/)" ] && echo "yes"

    # Ideally, we return "no" for 1 and "yes" for 2 and 3
    git diff HEAD^ HEAD -- . ":!./backend"
    output=$(git diff HEAD^ HEAD -- . ":!./backend")
    if [ -n "$output" ]; then
        echo 1
        # return 1
    else
        echo 0
        # return 0
    fi
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
