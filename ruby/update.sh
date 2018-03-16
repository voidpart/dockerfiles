#!/bin/bash
# set -e

versions=(
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

versionsalpine=(
  '2.2'
  '2.3'
)

for version in ${versionsalpine[*]}; do
  echo Templating $version-alpine
  sedStr="s!%%VERSION%%!$version!g;"

  mkdir -p $version-alpine
  sed -r "$sedStr" "Dockerfile-alpine.template" > "${version}-alpine/Dockerfile"
done

versionsalpine37=(
  '2.4'
  '2.5'
)

for version in ${versionsalpine37[*]}; do
  echo Templating $version-alpine3.7
  sedStr="s!%%VERSION%%!$version!g;"

  mkdir -p $version-alpine
  sed -r "$sedStr" "Dockerfile-alpine3.7.template" > "${version}-alpine/Dockerfile"
done
