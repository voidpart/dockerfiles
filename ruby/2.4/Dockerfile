FROM ruby:2.4

RUN apt-get update \
  && curl -sL https://deb.nodesource.com/setup_7.x | bash - \
  && apt-get install -y --no-install-recommends postgresql-client mysql-client cron nodejs \ 
  && apt-get clean -y && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
  && bundle config build.nokogiri --use-system-libraries \
  && npm install -g yarn
