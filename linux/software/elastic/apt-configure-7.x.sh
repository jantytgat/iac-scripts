#!/bin/bash
echo "########################################################################"
echo "LINUX - SOFTWARE - ELASTIC - GENERAL - REPOSITORY Ubuntu"
echo "########################################################################"

echo "### Adding apt-get key"
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | apt-key add -

echo "### Adding repository to sources.list"
echo "deb https://artifacts.elastic.co/packages/7.x/apt-get stable main" | tee -a /etc/apt/sources.list.d/elastic-7.x.list

apt-get update

echo "########################################################################"
echo " "