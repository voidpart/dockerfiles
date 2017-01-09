FROM ruby:2.1-alpine

RUN apk add --no-cache nodejs mysql mysql-client dcron postgresql-client
RUN bundle config build.nokogiri --use-system-libraries
RUN npm install -g phantomjs-prebuilt
