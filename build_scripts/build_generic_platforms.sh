#!/bin/bash
# Inspired by https://github.com/sensu/sensu-ruby-runtime/blob/main/build_scripts/build_centos_platforms.sh

mkdir -p dist
mkdir -p assets
mkdir -p scripts

platform="generic" test_platforms="centos:8 debian:10 ubuntu:20.04" ./build_and_test_platform.sh
retval=$?
if [[ retval -ne 0 ]]; then
  exit $retval
fi