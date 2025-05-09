#!/bin/sh
echo "### configure repository for hashicorp"

echo "### --> get keyring"
wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg

echo "### --> add repository to /etc/apt/sources.list.d/hashicorp.list"
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list

echo "### --> update package list"
apt-get update

echo "### --> DONE <--"
