#!/bin/bash
echo "########################################################################"
echo "LINUX - SOFTWARE - ELASTIC - AUDITBEAT - Install"
echo "########################################################################"

echo "### Install auditbeat"
apt-get update
apt-get install auditbeat -y


echo "### Enable auditbeat in systemd"
systemctl enable auditbeat

echo "### Restart auditbeat service"
service auditbeat restart

echo "########################################################################"
echo " "