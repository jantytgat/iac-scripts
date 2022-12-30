#!/bin/bash
echo "########################################################################"
echo "LINUX - OS - GENERIC - HARDENING - ISSUE"
echo "########################################################################"


echo "### Remove old issue"
rm -f /etc/issue
rm -f /etc/issue.net

echo "### Configuring new issue"
SCRIPT_PATH="$( cd $(dirname $0) && pwd)"
cp $SCRIPT_PATH/templates/issue /etc/issue
ln -s /etc/issue /etc/issue.net
chmod 644 /etc/issue*


echo "########################################################################"
echo " "