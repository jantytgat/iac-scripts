#!/bin/sh
echo "########################################################################"
echo "LINUX - SOFTWARE - PI-HOLE - Install"
echo "########################################################################"
echo "#                                                                      #"

git clone --depth 1 https://github.com/pi-hole/pi-hole.git pi-hole
cd "pi-hole/automated install/"
bash basic-install.sh --unattended

echo "#                                                                      #"
echo "########################################################################"
echo " "