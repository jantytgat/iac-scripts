#!/bin/sh
echo "### update grub to use legacy network interface names"
echo "### --> configure /etc/default/grub"
sed -ie 's/GRUB_CMDLINE_LINUX=.*/GRUB_CMDLINE_LINUX="net.ifnames=0 biosdevname=0"/' /etc/default/grub
echo "### --> update grub"
update-grub
echo "### --> DONE <--"
