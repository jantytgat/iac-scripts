#!/bin/sh
echo "### initialize zabbix server database"

DEBIAN_FRONTEND="noninteractive" apt-get install -y zabbix-sql-scripts
zcat /usr/share/zabbix-sql-scripts/postgresql/server.sql.gz | sudo -u zabbix psql zabbix 

echo "### --> DONE <--"