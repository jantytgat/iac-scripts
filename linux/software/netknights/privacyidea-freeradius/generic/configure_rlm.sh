#!/bin/sh
echo "########################################################################"
echo "LINUX - SOFTWARE - NETKNIGHTS - PRIVACYIDEA FREERADIUS - GENERIC - Configure rlm.ini"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"

template_basepath=$1
fqdn=$2
check_ssl=$3

cp $template_basepath/linux/software/netknights/privacyidea-freeradius/templates/etc/privacyidea/rlm_perl.ini /etc/privacyidea/.
sed -i "s~fqdn~$fqdn~" /etc/privacyidea/rlm_perl.ini
sed -i "s~check_ssl~$check_ssl~" /etc/privacyidea/rlm_perl.ini


echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "
