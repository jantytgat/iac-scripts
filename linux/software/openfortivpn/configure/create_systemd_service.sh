#!/bin/sh
echo "########################################################################"
echo "LINUX - SOFTWARE - OPENFORTIVPN - Create SystemD Service"
echo "########################################################################"
echo "#                                                                      #"

echo "### Copy service template to /lib/systemd/system/openfortivpn.service"
cp templates/openfortivpn.service /lib/systemd/system/.

echo "#                                                                      #"
echo "########################################################################"