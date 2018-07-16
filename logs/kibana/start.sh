#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install curl

curl -fsSL get.docker.com -o get-docker.sh
sh get-docker.sh

docker build --tag kibana-logs-v1 .

docker run --name kibana -d -p 9000:5601 kibana-logs-v1