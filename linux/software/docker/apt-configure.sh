#!/bin/bash
echo "########################################################################"
echo "# LINUX - SOFTWARE - DOCKER - GENERAL - REPOSITORY Ubuntu"
echo "########################################################################"


echo "### Install dependencies"
apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common
echo "### Download and install GPG key"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
echo "### Add apt-repository"
echo "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" >> /etc/apt/sources.list.d/docker.list
echo "### Update package list"
apt-get update


echo "########################################################################"
echo " "