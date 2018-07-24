#!/bin/bash

docker build --tag eureka .

docker run --rm --name eureka -d -p 8761:8761 --net=es-kibana-bridge eureka