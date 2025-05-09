#!/bin/sh
echo "########################################################################"
echo "LINUX - SOFTWARE - PI-HOLE - Install Whitelist entries"
echo "########################################################################"
echo "#                                                                      #"

pihole -w "sp.nba.com"
pihole -w "go.sdworx.com"
pihole -w "go.fortinet.com"
pihole -w "support.iam.ad.azure.com"
pihole -w "main.iam.ad.ext.azure.com"
pihole -w "tags.tiqcdn.com"
pihole -w "pages.info.exclusive-networks.com"

echo "#                                                                      #"
echo "########################################################################"
echo " "