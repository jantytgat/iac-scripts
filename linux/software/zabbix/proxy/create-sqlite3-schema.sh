#!/bin/sh
echo "### initialize zabbix proxy with sqlite3 database"

DEBIAN_FRONTEND="noninteractive" apt-get install -y zabbix-sql-scripts

mkdir -p /var/lib/zabbix
zcat /usr/share/zabbix-sql-scripts/postgresql/server.sql.gz | sudo -u zabbix psql zabbix 

echo "### --> DONE <--"