#!/bin/bash
echo "########################################################################"
echo "LINUX - SOFTWARE - ELASTIC - KIBANA - Install"
echo "########################################################################"

echo "### Install Kibana"
apt-get update
apt-get install kibana -y

echo "### Enable Kibana in systemd"
systemctl enable kibana

echo "### Restart Kibana service"
service filebeat kibana

echo "########################################################################"
echo " "