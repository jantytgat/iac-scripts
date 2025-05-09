#!/bin/sh
echo "########################################################################"
echo "LINUX - SOFTWARE - JETBRAINS - TEAMCITY - GENERIC - Install"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"


target_install_path=$1
auto_start_on_boot=$2

### Fetch version 2020.2.1 from JetBrains
cd /tmp
wget https://download.jetbrains.com/teamcity/TeamCity-2020.2.1.tar.gz
tar zxvf TeamCity*
mv /tmp/TeamCity $target_install_path

#### Set ownership and permissions
chown -R teamcity:root $target_install_path
chmod -R 770 $target_install_path

if [ "$auto_start_on_boot" = true ]; then
    # Pi-Hole gets a second IP address messing up the routing table
    # By enforcing a "netplan apply" every minute, the issue is solved
    apply_line="@reboot /var/teamcity/bin/runAll.sh start"
    echo $apply_line | crontab -u teamcity -
fi


echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "