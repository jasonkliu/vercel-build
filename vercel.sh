#!/bin/bash

# If a change is made only to backend/, do not build
# Otherwise, build (including src/ and root directory)
# `git diff` doesn't return correct error codes, so need to be creative
# git diff HEAD^ HEAD --quiet -- ./backend/

set -ex

cd 1_onlyfolder/
git diff HEAD^ HEAD -- ./backend/
[ -n "$(git diff HEAD^ HEAD -- ./backend/)" ] && echo "yes"
echo $?
git diff HEAD^ HEAD -- . ":!./backend"
echo $?
cd ../

echo "abc"

cd 2_outsidefolder/
git diff HEAD^ HEAD -- ./backend/
[ -n "$(git diff HEAD^ HEAD -- ./backend/)" ] && echo "yes"
echo $?
git diff HEAD^ HEAD -- . ":!./backend"
echo $?
cd ../

cd 3_both/
git diff HEAD^ HEAD -- ./backend/
[ -n "$(git diff HEAD^ HEAD -- ./backend/)" ] && echo "yes"
echo $?
git diff HEAD^ HEAD -- . ':!./backend'
echo $?
cd ../

