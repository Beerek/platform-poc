#!/usr/bin/env bash

#apt-get update
#apt-get install -y curl
#
#curl -fsSL get.docker.com -o get-docker.sh
#sh get-docker.sh

docker pull docker.elastic.co/elasticsearch/elasticsearch:6.3.1

docker run --rm --name elastic -p 9200:9200 -p 9300:9300 --network=es-kibana-bridge -e "discovery.type=single-node" docker.elastic.co/elasticsearch/elasticsearch:6.3.1