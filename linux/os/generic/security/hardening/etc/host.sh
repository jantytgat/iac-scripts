#!/bin/sh
echo "### configure /etc/host.conf"

echo "### --> remove old /etc/host.conf"
rm -f /etc/host.conf

echo "### --> add new /etc/host.conf"
SCRIPT_PATH="$( cd $(dirname $0) && pwd)"
cp $SCRIPT_PATH/templates/host.conf /etc/host.conf
chown root:root /etc/host.conf
chmod 644 /etc/host.conf

echo "### --> DONE <--"