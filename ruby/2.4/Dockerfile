FROM ruby:2.4

RUN apt-get update \
  && apt-get install -y apt-transport-https \
  && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
  && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
  && apt-get update \
  && curl -sL https://deb.nodesource.com/setup_7.x | bash - \
  && apt-get install -y --no-install-recommends postgresql-client mysql-client cron nodejs yarn \ 
  && apt-get clean -y && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
  && bundle config build.nokogiri --use-system-libraries
