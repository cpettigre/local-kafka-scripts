#!/bin/zsh

number_of_brokers=0

while getopts b: flag
do
    case "${flag}" in
        b) number_of_brokers=${OPTARG};;
    esac
done

if (( $number_of_brokers == 0 )); then
    echo "Value for -b (brokers) must be greater than 0"
    exit 1
fi

for (( i=0; i < $number_of_brokers; i++ ))
do
    if [ ! -d "broker$i" ]; then
        mkdir broker$i 
	cd broker$i
        init_here.zsh
	replace_server_props.zsh $i
        replace_log4j_props.zsh $i
	replace_zookeeper_props.zsh $i
        cd ..
    else 
        echo "broker$i already exists"
    fi
done
