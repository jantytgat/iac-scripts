#!/bin/sh
echo "### configure /etc/issue"

echo "### --> remove old /etc/issue"
rm -f /etc/issue
rm -f /etc/issue.net

echo "### add new /etc/issue"
SCRIPT_PATH="$( cd $(dirname $0) && pwd)"
cp $SCRIPT_PATH/templates/issue /etc/issue
ln -s /etc/issue /etc/issue.net
chmod 644 /etc/issue*

echo "### --> DONE <--"