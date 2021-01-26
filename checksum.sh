#!/bin/bash
# Copied from https://github.com/sensu/sensu-ruby-runtime/blob/main/checksum.sh

files=( dist/*.tar.gz )
echo "Asset files:"
( IFS=$'\n'; echo "${files[*]}" )

file=$(basename "${files[0]}")

project=$(echo $file | cut -d'_' -f 1)
version=$(echo $file | cut -d'_' -f 2)

sha512_file="${project}_${version}_sha512-checksums.txt"

cd dist

echo "${sha512_file}" > sha512_file

sha512sum ./*.tar.gz > "${sha512_file}"