#!/bin/env sh

rm -rf moveit-api/tmp/*

if ! type -p node > /dev/null; then
  echo "Please install nodejs" 
  exit 1
fi

if ! type docker-compose > /dev/null; then
  echo "Please install docker" 
  exit 1
fi

git submodule init
git submodule update 

cd moveit-ui && npm install && npm run build && cd ..

docker-compose up -d

docker-compose run api rake db:create 
docker-compose run api rake db:migrate

open http://localhost:8080
