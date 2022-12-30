#!/bin/bash
echo "########################################################################"
echo "LINUX - OS - GENERIC - HARDENING - FSTAB"
echo "########################################################################"


echo "### Configuring /etc/fstab"
echo 'tmpfs /run/shm tmpfs defaults,noexec,nosuid 0 0' >> /etc/fstab


echo "########################################################################"
echo " "