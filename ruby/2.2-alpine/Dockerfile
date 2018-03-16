FROM ruby:2.2-alpine

RUN apk add --no-cache curl wget bash git \
      tzdata coreutils build-base \
      nodejs \
      && apk add --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/community/ yarn
ENV BUNDLE_FORCE_RUBY_PLATFORM=1
