#!/bin/bash
echo "########################################################################"
echo "LINUX - OS - GENERIC - HARDENING - IRQ BALANCE"
echo "########################################################################"


echo "### Configuring irqbalance"
echo 'ENABLED="0"' >> /etc/default/irqbalance


echo "########################################################################"
echo " "