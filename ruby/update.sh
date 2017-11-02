#!/bin/bash
# set -e

versions=(
  '2.1' 
  '2.2' 
  '2.3'
  '2.4'
)

for version in ${versions[*]}; do
  echo Templating $version
  sedStr="s!%%VERSION%%!$version!g;"

  mkdir -p $version
  sed -r "$sedStr" "Dockerfile.template" > "$version/Dockerfile"
done

versions=(
  '2.1' 
  '2.2' 
  '2.3'
)
for version in ${versions[*]}; do
  mkdir -p $version-alpine
  sed -r "$sedStr" "Dockerfile-alpine.template" > "${version}-alpine/Dockerfile"
done

versions=(
  '2.4' 
)
for version in ${versions[*]}; do
  mkdir -p $version-alpine
  sed -r "$sedStr" "Dockerfile-alpine3.6.template" > "${version}-alpine/Dockerfile"
done
