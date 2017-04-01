FROM ruby:2.4.1-slim
RUN apt-get update -qq && apt-get install -y build-essential libmysqlclient-dev nodejs
RUN mkdir /the_tavern
WORKDIR /the_tavern
ADD Gemfile /the_tavern/Gemfile
ADD Gemfile.lock /the_tavern/Gemfile.lock
RUN bundle install
ADD . /the_tavern
