#!/bin/bash
echo "########################################################################"
echo "LINUX - OS - GENERIC - SECURITY remove user"
echo "########################################################################"


user=$1
echo "### Remove user $user"
deluser $user --remove-home

echo "### Remove user $user from sudoers.d"
FILE=/etc/sudoers.d/$user
if test -f "$FILE"; then
  rm $FILE
fi


echo "########################################################################"
echo " "