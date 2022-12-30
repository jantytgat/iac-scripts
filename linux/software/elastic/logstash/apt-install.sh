#!/bin/bash
echo "########################################################################"
echo "LINUX - SOFTWARE - ELASTIC - LOGSTASH - Install"
echo "########################################################################"

echo "### Install logstash"
apt-get update
apt-get install logstash -y

echo "### Enable logstash in systemd"
systemctl enable logstash

echo "### Restart logstash service"
service logstash restart

echo "########################################################################"
echo " "