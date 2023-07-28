#!/bin/zsh

file=${1:-all}

if [ ! -z "$1" ]; then
    cp $KAFKA_CONFIG/$file .
else
    cp $KAFKA_CONFIG/server.properties .
    cp $KAFKA_CONFIG/zookeeper.properties .
    cp $KAFKA_CONFIG/log4j.properties .
fi
