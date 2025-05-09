#!/bin/sh
user=$1
echo "### lock user $user"
passwd -l $user
