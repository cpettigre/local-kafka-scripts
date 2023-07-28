#!/bin/zsh

file=${1}

if [ ! -z "$1" ]; then
    cp $KAFKA_CONFIG/$file .
else
    cp -n $KAFKA_CONFIG/server.properties .
    cp -n $KAFKA_CONFIG/zookeeper.properties .
    cp -n $KAFKA_CONFIG/log4j.properties .
fi
