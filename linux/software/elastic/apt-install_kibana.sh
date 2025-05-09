#!/bin/sh
echo "### install kibana"
DEBIAN_FRONTEND="noninteractive" apt-get install -y kibana

echo "### --> enable systemd service kibana"
systemctl enable kibana

echo "### --> restart systemd service kibana"
service kibana restart

echo "### --> DONE <--"