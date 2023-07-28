#!/bin/zsh

broker_id=$1

#Set broker.id
sed -i "" "s,broker.id=0,broker.id=${broker_id},g" server.properties 

#Set listeners
sed -i "" "s,\#listeners=PLAINTEXT://:9092,listeners=PLAINTEXT://localhost:909${broker_id},g" server.properties 

#Set log.dirs
sed -i "" "s,/tmp/kafka-logs,`pwd`/logs,g" server.properties 

#Set metadata server listeners
sed -i "" "s,#confluent.metadata.server.listeners=http://0.0.0.0:8090,confluent.metadata.server.listeners=http://0.0.0.0:809${broker_id},g" server.properties
