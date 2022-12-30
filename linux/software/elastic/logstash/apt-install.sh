#!/bin/bash
echo "########################################################################"
echo "LINUX - SOFTWARE - ELASTIC - LOGSTASH - Install"
echo "########################################################################"

echo "### Install logstash"
apt update
apt install logstash -y

echo "### Enable logstash in systemd"
systemctl enable logstash

echo "### Restart logstash service"
service logstash restart

echo "########################################################################"
echo " "