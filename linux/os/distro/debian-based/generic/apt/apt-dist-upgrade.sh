#!/bin/bash
echo "########################################################################"
echo "LINUX - OS - DISTRO - DEBIAN-BASED - GENERIC - APT dist-upgrade"
echo "########################################################################"


echo "### Run apt-get dist-upgrade"
apt update
apt dist-upgrade -y -q


echo "########################################################################"
echo " "