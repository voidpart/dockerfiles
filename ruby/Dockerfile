FROM ubuntu:trusty

MAINTAINER dmitry.kontsevoy@gmail.com

RUN apt-get update \
  && apt-get install -y ca-certificates apt-transport-https

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 80F70E11F0F0D5F10CB20E62F5DA5F09C3173AA6 &&\
  echo "deb http://ppa.launchpad.net/brightbox/ruby-ng/ubuntu trusty main" > /etc/apt/sources.list.d/brightbox.list &&\
  apt-get update &&\
  apt-get install -y ruby2.1 ruby2.1-dev &&\
  rm -rf /var/lib/apt/lists/*

RUN gem install bundler

CMD irb
