FROM ruby:2.4.1

MAINTAINER Nozomi Tanaka <>

ENV APP_ROOT /usr/src/suggest_dinner

WORKDIR $APP_ROOT

EXPOSE 3000

RUN apt-get update \
&& apt-get install -y \
  nodejs \
  && rm -rf /var/lib/apt/lists/*

COPY Gemfile $APP_ROOT
COPY Gemfile.lock $APP_ROOT

RUN bundle install

COPY . $APP_ROOT

