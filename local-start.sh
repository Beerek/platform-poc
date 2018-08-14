#!/bin/bash

./logs/local.sh

cd ./service-discovery/
./local.sh
cd ..

cd ./http-gateway/
./local.sh
cd ..