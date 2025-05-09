#!/bin/sh
echo "### configure repository for zabbix 7.0 lts"

echo "### --> install dependencies"
DEBIAN_FRONTEND="noninteractive" apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common

echo "### --> add repository"
wget https://repo.zabbix.com/zabbix/7.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_7.0-2+ubuntu24.04_all.deb
dpkg -i zabbix-release_7.0-2+ubuntu24.04_all.deb

echo "### --> update package list"
apt-get update

echo "### --> DONE <--"