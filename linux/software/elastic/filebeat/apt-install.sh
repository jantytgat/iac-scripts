#!/bin/bash
echo "########################################################################"
echo "LINUX - SOFTWARE - ELASTIC - FILEBEAT - Install"
echo "########################################################################"

echo "### Install filebeat"
apt-get update
apt-get install filebeat -y

echo "### Enable filebeat in systemd"
systemctl enable filebeat

echo "### Restart filebeat service"
service filebeat restart

echo "########################################################################"
echo " "