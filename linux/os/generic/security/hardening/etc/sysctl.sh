#!/bin/sh
echo "### configure /etc/sysctl.conf"
echo "### --> remove old /etc/sysctl.conf"
rm -f /etc/sysctl.conf

echo "### --> add new /etc/sysctl.conf"
SCRIPT_PATH="$( cd $(dirname $0) && pwd)"
cp $SCRIPT_PATH/templates/sysctl.conf /etc/sysctl.conf
chown root:root /etc/sysctl.conf
chmod 644 /etc/sysctl.conf
sysctl -p

echo "### --> DONE <--"