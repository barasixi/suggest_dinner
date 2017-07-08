#!/bin/sh

echo "docker-compose build and run"

docker-compose stop

docker-compose build

echo "a"
docker-compose run web rails db:drop 
echo "b"
docker-compose run web rails db:create db:migrate
echo "c"

docker-compose up -d 
