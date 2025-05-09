#!/bin/sh
user=$1
echo "### remove user $user"
deluser $user --remove-home

FILE=/etc/sudoers.d/$user
if test -f "$FILE"; then
  echo "### --> remove user $user from sudoers.d"
  rm $FILE
fi
echo "### --> DONE <--"