#!/bin/sh
echo "### configure repository for elastic"
echo "### --> add apt-get key"
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | apt-key add -

echo "### --> add repository to /etc/apt/sources.list.d/elastic-7.x.list"
echo "deb https://artifacts.elastic.co/packages/7.x/apt-get stable main" | tee -a /etc/apt/sources.list.d/elastic-7.x.list

echo "### --> update package list"
apt-get update

echo "### --> DONE <--"