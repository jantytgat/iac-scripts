#!/bin/bash
echo "########################################################################"
echo "LINUX - OS - GENERIC - HARDENING - FAIL2BAN"
echo "########################################################################"


echo "### Configuring jails"
SCRIPT_PATH="$( cd $(dirname $0) && pwd)"
cp $SCRIPT_PATH/templates/fail2ban/jail.conf /etc/fail2ban/jail.local


echo "########################################################################"
echo " "