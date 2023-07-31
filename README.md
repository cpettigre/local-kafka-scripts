# local-kafka-scripts
Scripts for creation and configuration of Kafka brokers locally on Mac. Set $KAFKA_HOME to the directory of your Confluent Platform Kafka installation before using.

<b>create-brokers-here.zsh -b [n]</b><br>
Run this script to create distinct directories and configurations for n new brokers in your current directory.

<b>init-broker.zsh</b><br>
In a new session, change to the directory of your broker and then run `source init-broker.zsh` before running any Kafka bin commands. Sets env variables and creates necessary directories or config files if any are missing.

<b>get_default_configs.zsh [filename (optional)]</b><br>
Copy the basic, default configuration files (server.properties, log4j.properties and zookeeper.properties) from Kafka's etc/kafka folder. Does not overwrite unless a filename is specified.

<b>replace_server_props.zsh [broker_id]</b><br>
Find and replace on some relevant properties in the server_properties file. Sets values based on the integer broker id provided

<b>replace_log4j_props.zsh [broker_id]</b><br>
Find and replace on some relevant properties in the log4j config. Sets values based on the integer broker id provided

<b>replace_zookeeper_props.zsh [broker_id]</b><br>
Find and replace on some relevant properties in the zookeeper config. Sets a values based on the integer broker id provided
