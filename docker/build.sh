#!/usr/bin/env bash

docker-compose up -d --force-recreate --build --remove-orphans

# COMPOSER UPDATE
docker run --rm --interactive --tty \
  --volume $PWD/../:/app \
  --volume ~/.composer/cache:/composer/cache \
  --user $(id -u):$(id -g) \
  composer update