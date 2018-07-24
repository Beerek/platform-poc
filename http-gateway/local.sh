#!/bin/bash

docker build --tag http-gateway .

docker run --rm --name http-gateway --net=es-kibana-bridge -d -p 9999:9999 http-gateway