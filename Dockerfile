FROM ruby:2.4-alpine
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /docker-app
WORKDIR /docker-app
COPY Gemfile /docker-app/Gemfile
COPY Gemfile.lock /docker-app/Gemfile.lock
RUN bundle install
COPY . /docker-app
