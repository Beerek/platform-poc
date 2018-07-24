#!/usr/bin/env bash

#apt-get update
#apt-get install -y curl

#curl -fsSL get.docker.com -o get-docker.sh
#sh get-docker.sh

docker pull docker.elastic.co/elasticsearch/elasticsearch:6.3.1

docker network create -d bridge es-kibana-bridge

docker run -d --name elastic -p 9200:9200 -p 9300:9300 --network=es-kibana-bridge -e "discovery.type=single-node" docker.elastic.co/elasticsearch/elasticsearch:6.3.1

cd ./kibana/

docker build --tag kibana-logs-v1 .

docker run --rm --name kibana --net=es-kibana-bridge -d -p 9000:5601 kibana-logs-v1
