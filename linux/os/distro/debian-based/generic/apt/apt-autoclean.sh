#!/bin/bash
echo "########################################################################"
echo "LINUX - OS - DISTRO - DEBIAN-BASED - GENERIC - APT autoclean"
echo "########################################################################"


echo "Auto-clean unused packages"
apt autoclean -q -y


echo "########################################################################"
echo " "