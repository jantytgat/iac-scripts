#!/bin/sh
echo "### install metricbeat"
DEBIAN_FRONTEND="noninteractive" apt-get install -y metricbeat

echo "### --> enable systemd service metricbeat"
systemctl enable metricbeat

echo "### --> restart systemd service metricbeat"
service metricbeat restart

echo "### --> DONE <--"