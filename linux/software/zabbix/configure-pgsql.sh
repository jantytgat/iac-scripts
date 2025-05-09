#!/bin/sh
echo "### configure database for use with Zabbix"

sudo -u postgres createuser --pwprompt zabbix
sudo -u postgres createdb -O zabbix zabbix 

echo "### --> DONE <--"