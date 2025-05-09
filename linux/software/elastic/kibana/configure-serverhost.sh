#!/bin/sh
echo "########################################################################"
echo "LINUX - SOFTWARE - ELASTIC - KIBANA - GENERIC - Server host"
echo "########################################################################"

filepath=$1
listenaddress=$2
servername=$3

sed -i "s~#server.host: \"localhost\"~server.host: \"$listenaddress\"~" $filepath
sed -i "s~#server.name: \"your-hostname\"~server.name: \"$servername\"~" $filepath

echo "########################################################################"
echo " "