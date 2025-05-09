#!/bin/sh
echo "### install zabbix-proxy"
DEBIAN_FRONTEND="noninteractive" apt-get install -y zabbix-proxy-sqlite3

mkdir -p /var/lib/zabbix
chown -R zabbix /var/lib/zabbix
