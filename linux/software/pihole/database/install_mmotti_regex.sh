#!/bin/sh
echo "########################################################################"
echo "LINUX - SOFTWARE - PI-HOLE - Install mmotti pihole-regex"
echo "########################################################################"
echo "#                                                                      #"

DEBIAN_FRONTEND="noninteractive" apt-get install -y python3
curl -sSl https://raw.githubusercontent.com/mmotti/pihole-regex/master/install.py | python3

echo "#                                                                      #"
echo "########################################################################"
echo " "