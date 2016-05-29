# Dockerized rails app

Simple rails app that highlights code snippets using http://markup.su/api/highlighter.

The app runs in some docker containers with nginx, redis, sidekiq and postgres.

The steps to run the app are:

Clone the repo...

`git clone https://github.com/otaviomedeiros/dockerized-rails-app.git`

`cd dockerized-rails-app`

Run the containers...

`docker-compose up`

Create database...

`docker-compose run app rake db:create`

Run migrations...

`docker-compose run app rake db:migrate`




