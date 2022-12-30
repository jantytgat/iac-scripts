#!/bin/bash
echo "########################################################################"
echo "LINUX - OS - GENERIC - HARDENING - MODPROBE"
echo "########################################################################"


echo "### Configuring blacklist"
echo '' >> /etc/modprobe.d/blacklist.conf
echo '### Modprobe hardening' >> /etc/modprobe.d/blacklist.conf
echo 'install cramfs /bin/false' >> /etc/modprobe.d/blacklist.conf
echo 'install freevxfs /bin/false' >> /etc/modprobe.d/blacklist.conf
echo 'install hfs /bin/false' >> /etc/modprobe.d/blacklist.conf
echo 'install hfsplus /bin/false' >> /etc/modprobe.d/blacklist.conf
echo 'install jffs2 /bin/false' >> /etc/modprobe.d/blacklist.conf
echo 'install udf /bin/false' >> /etc/modprobe.d/blacklist.conf
echo 'install dccp /bin/false' >> /etc/modprobe.d/blacklist.conf
echo 'install sctp /bin/false' >> /etc/modprobe.d/blacklist.conf
echo 'install rds /bin/false' >> /etc/modprobe.d/blacklist.conf
echo 'install tipc /bin/false' >> /etc/modprobe.d/blacklist.conf
echo 'install usb-storage /bin/false' >> /etc/modprobe.d/blacklist


echo "########################################################################"
echo " "