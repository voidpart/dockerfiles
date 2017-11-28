FROM ruby:2.3-alpine

RUN apk add --no-cache nodejs mariadb-dev mariadb-client dcron postgresql-client postgresql-dev git build-base \
      libxml2 libxml2-dev libxslt libxslt-dev tzdata curl coreutils
RUN apk add --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/community/ yarn
RUN bundle config build.nokogiri --use-system-libraries
ENV BUNDLE_FORCE_RUBY_PLATFORM=1
