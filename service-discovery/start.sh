#!/bin/bash

/home/logstash/logstash-6.3.1/bin/logstash -f /app/logstash.conf &

java -jar /app/target/service-discovery-1.0-SNAPSHOT.jar