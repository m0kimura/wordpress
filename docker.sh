#!/bin/bash
#
##
  if [[ $1 = "$null" ]]; then
    docker-compose up -d
  elif [[ $1 = "single" ]]; then
    docker run -d -p 80:80 --name=wpress-sgl tutum/wordpress
  elif [[ $1 = "stop" ]]; then
    docker-compose stop
  elif [[ $1 = "network" ]]; then
    docker network inspect wordpress_default
  fi
##

