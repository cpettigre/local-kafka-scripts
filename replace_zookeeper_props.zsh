#!/bin/zsh

broker_id=$1

#Set data directory
sed -i "" "s,/tmp/zookeeper,`pwd`/data,g" zookeeper.properties

#Set client port
sed -i "" "s,clientPort=2180,clientPort=218${broker_id},g" zookeeper.properties
