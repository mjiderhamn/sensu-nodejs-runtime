#!/bin/bash
# Inspired by https://github.com/sensu/sensu-ruby-runtime/blob/main/build_scripts/build_alpine_platforms.sh

mkdir -p dist
mkdir -p assets
mkdir -p scripts

# Alpine platform
platform="alpine" test_platforms="alpine:latest alpine:3 alpine:3.12 alpine:3.9" ./build_and_test_platform.sh
retval=$?
if [[ retval -ne 0 ]]; then
  exit $retval
fi