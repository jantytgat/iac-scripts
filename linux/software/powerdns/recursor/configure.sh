#!/bin/sh
echo "### configure pdns-recursor"

template_path=$1
ipaddress=$2

echo "### --> copy template configuration"
cp $template_path/linux/software/powerdns/recursor/templates/recursor.conf /etc/powerdns/.

echo "### --> update listen address"
sed -i "s/local-address=0.0.0.0/local-address=$ipaddress/" /etc/powerdns/recursor.conf

echo "### --> DONE <--"