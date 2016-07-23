#!/bin/bash
# set -e

versions=(
  '2.2' 
  '2.3'
)

for version in ${versions[*]}; do
  echo Templating $version
  sedStr="s!%%VERSION%%!$version!g;"

  sed -r "$sedStr" "Dockerfile.template" > "$version/Dockerfile"
done
