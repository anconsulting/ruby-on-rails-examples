FROM ruby:2.4.1

RUN apt-get update -qq \
 && apt-get install -y build-essential libpq-dev nodejs nodejs-legacy \
 && rm -rf /var/lib/apt/lists/*

RUN mkdir /ruby-on-rails-examples

WORKDIR /ruby-on-rails-examples

ADD Gemfile /ruby-on-rails-examples/Gemfile

ADD Gemfile.lock /ruby-on-rails-examples/Gemfile.lock

RUN bundle install

ADD . /ruby-on-rails-examples

RUN cd /ruby-on-rails-examples
