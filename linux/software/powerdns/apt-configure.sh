#!/bin/sh
echo "### configure repository for powerdns"

echo "### --> add repository key"
curl https://repo.powerdns.com/FD380FBB-pub.asc | apt-key add -

echo "### --> add repository"
add-apt-repository "deb [arch=amd64] http://repo.powerdns.com/ubuntu focal-rec-44 main"

echo "### --> update package list"
apt-get update

echo "### --> DONE <--"
