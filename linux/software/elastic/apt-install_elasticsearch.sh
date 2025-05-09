#!/bin/sh
echo "### install elasticsearch"
DEBIAN_FRONTEND="noninteractive" apt-get install -y elasticsearch

echo "### --> enable systemd service elasticsearch"
systemctl enable elasticsearch

echo "### --> restart systemd service elasticsearch"
service elasticsearch restart

echo "### --> DONE <--"