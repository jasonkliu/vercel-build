#!/bin/bash
set -e

mkdir -vp 1_onlyfolder/
cd 1_onlyfolder/
git init
git commit --allow-empty -m "Empty Commit"
mkdir -vp backend/
touch backend/file
git add .
git commit -m "first"
cd ../

mkdir -vp 2_outsidefolder/
cd 2_outsidefolder/
git init
git commit --allow-empty -m "Empty Commit2"
touch file2
git add .
git commit -m "second"
cd ../

mkdir -vp 3_both/
cd 3_both/
git init
git commit --allow-empty -m "Empty Commit3"
mkdir -vp backend/
touch backend/file
touch file2
git add .
git commit -m "third"
cd ../

# 1_onlyfolder
# Initialized empty Git repository in vercel-build/1_onlyfolder/.git/
# [main (root-commit) 706ec60] Empty Commit
# backend
# [main 2b6ff37] first
#  1 file changed, 0 insertions(+), 0 deletions(-)
#  create mode 100644 backend/file
# 2_outsidefolder
# Initialized empty Git repository in vercel-build/2_outsidefolder/.git/
# [main (root-commit) e8affb9] Empty Commit2
# [main ada097b] second
#  1 file changed, 0 insertions(+), 0 deletions(-)
#  create mode 100644 file2
# 3_both
# Initialized empty Git repository in vercel-build/3_both/.git/
# [main (root-commit) 9638db7] Empty Commit3
# backend
# [main f61cb8b] third
#  2 files changed, 0 insertions(+), 0 deletions(-)
#  create mode 100644 backend/file
#  create mode 100644 file2
