#!/bin/bash

# If a change is made only to backend/, do not build
# Otherwise, build (including src/ and root directory)
# `git diff` doesn't return correct error codes, so need to be creative
