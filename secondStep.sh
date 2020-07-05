#!/bin/bash

git clone https://github.com/Roshani-Light-Towards-Life/litil.git
git clone https://github.com/Roshani-Light-Towards-Life/nginx_reverse_proxy.git
git clone https://github.com/Roshani-Light-Towards-Life/area51.git

docker swarm init
# docker stack deploy -c services_swarm.yml root