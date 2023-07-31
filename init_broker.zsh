#!/bin/zsh

export KAFKA_CONFIG=$KAFKA_HOME/etc/kafka
export KAFKA_BIN=$KAFKA_HOME/bin
export PATH=$PATH:$KAFKA_BIN
export KAFKA_LOG4J_OPTS="-Dlog4j.configuration=file:$(pwd)/log4j.properties"

if [ ! -f "server.properties" ]; then
    get_default_configs.zsh "server.properties"
fi 

if [ ! -f "zookeeper.properties" ]; then
    get_default_configs.zsh "zookeeper.properties"
fi 

if [ ! -f "log4j.properties" ]; then
    get_default_configs.zsh "log4j.properties"
fi 

if [ ! -d "logs" ]; then
    mkdir logs
fi

if [ ! -d "data" ]; then
    mkdir data
fi

if [ ! -d "service" ]; then
    mkdir service
fi
