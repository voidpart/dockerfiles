FROM h3xby/rails:latest
MAINTAINER dmitry.kontsevoy@gmail.com

ONBUILD ADD Gemfile Gemfile.lock /app/
ONBUILD RUN bundle install --deployment --without development doc test
ONBUILD ADD . /app
