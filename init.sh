#!/bin/bash
set -e

mkdir -vp 1_onlyfolder/
cd 1_onlyfolder/
mkdir -vp backend/
touch backend/file
git init
git add .
git commit -m "first"
cd ../

mkdir -vp 2_outsidefolder/
cd 2_outsidefolder/
touch file2
git init
git add .
git commit -m "second"
cd ../

mkdir -vp 3_both/
cd 3_both/
mkdir -vp backend/
touch backend/file
touch file2
git init
git add .
git commit -m "third"
cd ../


# 1_onlyfolder
# backend
# Initialized empty Git repository in vercel-build/1_onlyfolder/.git/
# [main (root-commit) af7c549] first
#  1 file changed, 0 insertions(+), 0 deletions(-)
#  create mode 100644 backend/file
# 2_outsidefolder
# Initialized empty Git repository in vercel-build/2_outsidefolder/.git/
# [main (root-commit) 2e68728] second
#  1 file changed, 0 insertions(+), 0 deletions(-)
#  create mode 100644 file2
# 3_both
# backend
# Initialized empty Git repository in vercel-build/3_both/.git/
# [main (root-commit) 7ba6493] third
#  2 files changed, 0 insertions(+), 0 deletions(-)
#  create mode 100644 backend/file
#  create mode 100644 file2
