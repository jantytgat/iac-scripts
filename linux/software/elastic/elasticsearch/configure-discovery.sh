#!/bin/sh
echo "########################################################################"
echo "LINUX - SOFTWARE - ELASTIC - ELASTICSEARCH - GENERIC - Discovery Seed Hosts"
echo "########################################################################"

filepath=$1
seed_hosts=$2
echo $seed_hosts

sed -i "s~#discovery.seed_hosts: \[\"host1\", \"host2\"\]~discovery.seed_hosts: $seed_hosts~" $filepath

echo "########################################################################"
echo " "