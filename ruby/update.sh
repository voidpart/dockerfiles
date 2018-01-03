#!/bin/bash
# set -e

versions=(
  '2.1' 
  '2.2' 
  '2.3'
  '2.4'
  '2.5'
)

for version in ${versions[*]}; do
  echo Templating $version
  sedStr="s!%%VERSION%%!$version!g;"

  mkdir -p $version
  sed -r "$sedStr" "Dockerfile.template" > "$version/Dockerfile"
done

for version in ${versions[*]}; do
  echo Templating $version-alpine
  sedStr="s!%%VERSION%%!$version!g;"

  mkdir -p $version-alpine
  sed -r "$sedStr" "Dockerfile-alpine.template" > "${version}-alpine/Dockerfile"
done
