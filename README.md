# platform-poc
proof of concept


## Current state:
1. Http Gateway - non-scaled but working sigle-instance service based on Netflix Zuul
2. Service Discovery - non-scaled service based on Netflix Eureka, tested and ready for usage
3. Logs database and monithoring tool - non-scaled instance of ElasticSearch as DB and Kibana for visualization and monithoring 

## TODO:
1. refactor dockerfiles and bash scripts
2. use docker compose  
3. scale all services  
4. deploy to AWS / Asure  

## How to run locally:
##### (Deprecated)
1. Download and install Docker
2. Set memory limit for docker to 4+ GB
3. Run `local-start.sh`
##### Up-to-date
1. Run `docker-compose up --build`

## Default Ports:
Kibana - `9000`  
ElasticSearch - `9200`, `9300`  
Http Gateway - `9999`  
Service Discovery - `8761`  
  
When started locally all services can be reached outside of Docker from `http://localhost:<port>`, 
but for reaching them from other container you have to run container in network `es-kibana-bridge`(like `... --net=es-kibana-bridge ...`)
and after that you can access some service like `http://<name>:<port>`  
  
### Names:
Http Gateway - `http-gateway`  
Service Discovery - `eureka`  
ElasticSearch - `elastic`  
Kibana - `kibana`  
