#!/bin/bash
echo "########################################################################"
echo "LINUX - OS - GENERIC - SECURITY - SSH config"
echo "########################################################################"


echo "### Remove old sshd_config"
rm -f /etc/ssh/sshd_config

echo "### Configuring new sshd_config"
SCRIPT_PATH="$( cd $(dirname $0) && pwd)"
cp $SCRIPT_PATH/templates/* /etc/ssh/.
chown root:root /etc/ssh/sshd_config
chmod 644 /etc/ssh/sshd_config

sed -i '/^session    optional     pam_motd.so/s//#&/' /etc/pam.d/sshd


echo "########################################################################"
echo " "