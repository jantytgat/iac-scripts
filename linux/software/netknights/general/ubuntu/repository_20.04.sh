#!/bin/sh
echo "########################################################################"
echo "LINUX - SOFTWARE - PRIVACYIDEA - GENERAL - REPOSITORY Ubuntu"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"


wget https://lancelot.netknights.it/NetKnights-Release.asc
gpg --import --import-options show-only --with-fingerprint NetKnights-Release.asc
apt-key add NetKnights-Release.asc
add-apt-repository http://lancelot.netknights.it/community/focal/stable
apt-get update


echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "
