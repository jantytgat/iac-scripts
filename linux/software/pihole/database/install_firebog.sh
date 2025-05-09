#!/bin/sh
echo "########################################################################"
echo "LINUX - SOFTWARE - PI-HOLE - Install Firebog lists"
echo "########################################################################"
echo "#                                                                      #"

inputFile=/tmp/firebog.txt
wget -O $inputFile https://v.firebog.net/hosts/lists.php?type=tick

inputLines=$(cat $inputFile)
for line in $inputLines
do
    sqlite3 /etc/pihole/gravity.db "INSERT INTO adlist (address, enabled) VALUES('$line', 1);"
done
pihole -g

echo "#                                                                      #"
echo "########################################################################"
echo " "