#!/bin/sh

echo "### configure repository for docker"
echo "### --> install dependencies"
DEBIAN_FRONTEND="noninteractive" apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common

echo "### --> download and install GPG key"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo "### --> add repository to /etc/apt/sources.list.d/docker.list"
echo "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" >> /etc/apt/sources.list.d/docker.list

echo "### --> update package list"
apt-get update

echo "### --> DONE <--"