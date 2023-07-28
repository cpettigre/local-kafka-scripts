#!/bin/zsh

#replace log directory for all appenders to service folder in working directory
sed -i "" "s,\${kafka.logs.dir},`pwd`/service,g" log4j.properties
