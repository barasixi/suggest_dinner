#!/bin/sh

echo "docker-compose build and run"

docker-compose stop

docker-compose build

docker-compose run web rails db:drop db:create db:migrate

docker-compose up -d 
