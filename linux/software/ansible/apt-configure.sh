#!/bin/bash
echo "########################################################################"
echo "LINUX - SOFTWARE - ANSIBLE - GENERAL - REPOSITORY Ubuntu"
echo "########################################################################"

echo "### Adding repository to sources.list"
apt-add-repository -y ppa:ansible/ansible
apt-get update

echo "########################################################################"
echo " "