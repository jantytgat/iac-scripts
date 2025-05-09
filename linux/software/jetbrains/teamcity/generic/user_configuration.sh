#!/bin/sh
echo "########################################################################"
echo "LINUX - SOFTWARE - JETBRAINS - TEAMCITY - GENERIC - Add user"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"

system_user=$1
system_password=$2

echo "### Add user teamcity"
useradd $system_user --no-log-init --home-dir /home/$system_user --create-home --shell /bin/bash
echo "$system_user:$system_password" | chpasswd


echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "