FROM ruby:2.2

RUN apt-get update \
  && apt-get install -y --no-install-recommends ca-certificates wget curl postgresql-client mysql-client cron nodejs nodejs-legacy npm imagemagick  \ 
  && npm install -g bower \
  && apt-get clean -y && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
  && bundle config build.nokogiri --use-system-libraries
