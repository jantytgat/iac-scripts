#!/bin/bash
echo "########################################################################"
echo "LINUX - OS - DISTRO - DEBIAN-BASED - GENERIC - APT upgrade"
echo "########################################################################"


echo "### Run apt upgrade"
apt update
apt upgrade -y -q


echo "########################################################################"
echo " "