FROM h3xby/rails:latest

# Install phusion passenger
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 561F9B9CAC40B2F7 \
  && echo "deb https://oss-binaries.phusionpassenger.com/apt/passenger trusty main" > /etc/apt/sources.list.d/passenger.list \
  && apt-get update \
  && apt-get install -y nginx-extras passenger \
  && rm -rf /var/lib/apt/lists/*
