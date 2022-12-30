#!/bin/bash
echo "########################################################################"
echo "LINUX - SOFTWARE - ELASTIC - KIBANA - GENERIC - Set ElasticSearch Hosts"
echo "########################################################################"

filepath=$1
elasticsearchnodes=$2

sed -i "s~#elasticsearch.hosts: \[\"http://localhost:9200\"\]~elasticsearch.hosts: $elasticsearchnodes~" $filepath

echo "########################################################################"
echo " "