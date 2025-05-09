#!/bin/sh
echo "### install logstash"
DEBIAN_FRONTEND="noninteractive" apt-get install -y logstash

echo "### --> enable systemd service logstash"
systemctl enable logstash

echo "### --> restart systemd service logstash"
service logstash restart

echo "### --> DONE <--"