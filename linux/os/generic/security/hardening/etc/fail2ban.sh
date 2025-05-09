#!/bin/sh
echo "### configure fail2ban jails"
SCRIPT_PATH="$( cd $(dirname $0) && pwd)"
cp $SCRIPT_PATH/templates/fail2ban/jail.conf /etc/fail2ban/jail.local
