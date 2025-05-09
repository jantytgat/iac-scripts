#!/bin/sh
echo "### configure repository for ansible"
apt-add-repository -y ppa:ansible/ansible
apt-get update
