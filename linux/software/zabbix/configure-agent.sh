#!/bin/sh
echo "### configure zabbix-agent"

template_path=$1
ipaddress=$2
hostname=$3

echo "### --> copy template configuration"
cp $template_path/linux/software/zabbix/agent/templates/zabbix_agentd.conf /etc/zabbix/.

echo "### --> update server address"
sed -i "s/Server=127.0.0.1/Server=$ipaddress/" /etc/zabbix/zabbix_agentd.conf
sed -i "s/ServerActive=127.0.0.1/ServerActive=$ipaddress/" /etc/zabbix/zabbix_agentd.conf
sed -i "s/Hostname=localhost/Hostname=$hostname/" /etc/zabbix/zabbix_agentd.conf

echo "### --> DONE <--"