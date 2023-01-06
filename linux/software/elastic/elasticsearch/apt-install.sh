#!/bin/bash
echo "########################################################################"
echo "LINUX - SOFTWARE - ELASTIC - ELASTICSEARCH - Install"
echo "########################################################################"
echo "#                                                                      #"

echo "### Install elasticsearch"
apt-get update
apt-get install elasticsearch -y

echo "### Enable elasticsearch in systemd"
systemctl enable elasticsearch

echo "#                                                                      #"
echo "########################################################################"
echo " "