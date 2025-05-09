#!/bin/sh
echo "### install filebeat"
DEBIAN_FRONTEND="noninteractive" apt-get install -y filebeat

echo "### --> enable systemd service filebeat"
systemctl enable filebeat

echo "### --> restart systemd service filebeat"
service filebeat restart

echo "### --> DONE <--"