#!/bin/bash
echo "########################################################################"
echo "LINUX - OS - DISTRO - GENERIC - GRUB - Network interface names"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"


echo "### Updating GRUB"
sed -ie 's/GRUB_CMDLINE_LINUX=.*/GRUB_CMDLINE_LINUX="net.ifnames=0 biosdevname=0"/' /etc/default/grub
update-grub


echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "

