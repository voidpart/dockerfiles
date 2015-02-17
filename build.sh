#!/bin/bash

docker build --force-rm=true -t h3xby/ruby ruby
docker build --force-rm=true -t h3xby/rails rails/default
docker build --force-rm=true -t h3xby/rails:onbuild rails/onbuild

