#!/bin/sh
echo "### clean up cloud-init"

FILE=/etc/cloud/cloud.cfg.d/50-curtin-networking.cfg
if test -f "$FILE"; then
  echo "### --> delete $FILE"
  rm $FILE
fi

FILE=/etc/cloud/cloud.cfg.d/subiquity-disable-cloudinit-networking.cfg
if test -f "$FILE"; then
  echo "### --> delete $FILE"
  rm $FILE
fi

FILE=/etc/cloud/cloud.cfg.d/90_dpkg.cfg
if test -f "$FILE"; then
  echo "### --> delete $FILE"
  rm $FILE
fi

echo "### --> create /etc/cloud/cloud.cfg.d/99-pve.cfg"
touch /etc/cloud/cloud.cfg.d/99-pve.cfg
echo 'datasource_list: [ NoCloud, ConfigDrive ]' > /etc/cloud/cloud.cfg.d/99_pve.cfg

echo "### --> run cloud-init clean"
cloud-init clean -s -l
cloud-init status

echo "### --> DONE <--"
