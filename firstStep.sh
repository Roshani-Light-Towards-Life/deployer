#!/bin/bash

sudo apt -y update
sudo apt-get -y install software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
# Install docker - Adding Docker to APT sources
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
# Install docker - Updating package database with the Docker packages
apt-get -y update
while sudo fuser /var/lib/dpkg/lock >/dev/null 2>&1; do sleep 1; done;
# Install docker - Installing from the Docker repo instead of the default Ubuntu 
apt-cache policy docker-ce
while sudo fuser /var/lib/dpkg/lock >/dev/null 2>&1; do sleep 1; done;
# Install docker
apt-get -y install docker-ce=5:18.09.0~3-0~ubuntu-bionic