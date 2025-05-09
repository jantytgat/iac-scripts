#!/bin/sh
echo "########################################################################"
echo "LINUX - SOFTWARE - JETBRAINS - TEAMCITY - GENERIC - Install"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"


target_data_path=$1

### Create data directory for TeamCity
mkdir -p $target_data_path

## Set ownership and permissions
chown -R teamcity:root $target_data_path
chmod -R 770 $target_data_path


echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "