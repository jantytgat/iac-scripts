#!/bin/bash
echo "########################################################################"
echo "LINUX - OS - GENERIC - HARDENING - HOST"
echo "########################################################################"


echo "### Remove old /etc/host.conf"
rm -f /etc/host.conf

echo "### Configuring new /etc/host.conf"
SCRIPT_PATH="$( cd $(dirname $0) && pwd)"
cp $SCRIPT_PATH/templates/host.conf /etc/host.conf
chown root:root /etc/host.conf
chmod 644 /etc/host.conf


echo "########################################################################"
echo " "