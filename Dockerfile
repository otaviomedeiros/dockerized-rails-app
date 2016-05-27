FROM ruby:2.3-slim
MAINTAINER Otavio Medeiros <otaviorm@gmail.com>

RUN apt-get update && apt-get install -qq -y build-essential patch nodejs libpq-dev postgresql-client-9.4 --fix-missing --no-install-recommends
RUN apt-get install libsqlite3-dev -y

ENV INSTALL_PATH /app
RUN mkdir -p $INSTALL_PATH

WORKDIR $INSTALL_PATH

ADD Gemfile Gemfile
RUN bundle install

COPY . .

CMD rm tmp/pids/server.pid && bundle exec rails s -b 0.0.0.0
