#!/bin/sh
echo "########################################################################"
echo "LINUX - SOFTWARE - PHPIPAM - GENERIC - Install"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"

target_directory=$1

git clone --recursive https://github.com/phpipam/phpipam.git $target_directory
cp $target_directory/config.dist.php $target_directory/config.php

echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "
