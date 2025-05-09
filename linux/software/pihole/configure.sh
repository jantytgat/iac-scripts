#!/bin/sh
echo "########################################################################"
echo "LINUX - SOFTWARE - PI-HOLE - Configure"
echo "########################################################################"
echo "#                                                                      #"

ipv4_listen=$1
upstream_dns1=$2
upstream_dns2=$3
auto_apply_netplan=$4

sed -i "s/IPV4_ADDRESS=0.0.0.0/IPV4_ADDRESS=$ipv4_listen/" /etc/pihole/setupVars.conf
sed -i "s/PIHOLE_DNS_1=0.0.0.0/PIHOLE_DNS_1=$upstream_dns1/" /etc/pihole/setupVars.conf
sed -i "s/PIHOLE_DNS_2=0.0.0.0/PIHOLE_DNS_2=$upstream_dns2/" /etc/pihole/setupVars.conf


if [ "$auto_apply_netplan" = true ]; then
    # Pi-Hole gets a second IP address messing up the routing table
    # By enforcing a "netplan apply" every minute, the issue is solved
    apply_line="* * * * * /usr/sbin/netplan apply"
    echo $apply_line | crontab -u root -
fi

echo "#                                                                      #"
echo "########################################################################"
echo " "