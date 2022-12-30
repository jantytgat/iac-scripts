#!/bin/bash
echo "########################################################################"
echo "LINUX - OS - DISTRO - DEBIAN-BASED - UBUNTU - CLOUD-INIT cleanup"
echo "########################################################################"

FILE=/etc/cloud/cloud.cfg.d/50-curtin-networking.cfg
if test -f "$FILE"; then
  rm $FILE
fi

FILE=/etc/cloud/cloud.cfg.d/curtin-preserve-sources.cfg
if test -f "$FILE"; then
  rm $FILE
fi

FILE=/etc/cloud/cloud.cfg.d/subiquity-disable-cloudinit-networking.cfg
if test -f "$FILE"; then
  rm $FILE
fi

FILE=/etc/cloud/cloud.cfg.d/90_dpkg.cfg
if test -f "$FILE"; then
  rm $FILE
fi

echo "### Creating /etc/cloud/cloud.cfg.d/99-pve.cfg"
touch /etc/cloud/cloud.cfg.d/99-pve.cfg
echo 'datasource_list: [ NoCloud, ConfigDrive ]' > /etc/cloud/cloud.cfg.d/99_pve.cfg

echo "### Cloud-init clean"
cloud-init clean -s -l
cloud-init status

echo "########################################################################"
echo " "