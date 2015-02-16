FROM h3xby/ruby:latest

MAINTAINER dmitry.kontsevoy@gmail.com

# Install additional packages
RUN apt-get update \
  && apt-get install -y libpq-dev nodejs imagemagick git

# Install phusion passenger
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 561F9B9CAC40B2F7 \
  && echo "deb https://oss-binaries.phusionpassenger.com/apt/passenger trusty main" > /etc/apt/sources.list.d/passenger.list \
  && apt-get update \
  && apt-get install -y nginx-extras passenger \
  && rm -rf /var/lib/apt/lists/*

# Install nginx config
ADD config/nginx.conf /etc/nginx/nginx.conf
ADD config/nginx.rails.conf /etc/nginx/sites-enabled/rails.conf

RUN mkdir /app \
  && rm /etc/nginx/sites-enabled/default

WORKDIR /app

CMD nginx

ENV RAILS_ENV production
