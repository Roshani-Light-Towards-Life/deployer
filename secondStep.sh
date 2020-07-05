#!/bin/bash

docker swarm init
docker stack deploy -c services_swarm.yml root