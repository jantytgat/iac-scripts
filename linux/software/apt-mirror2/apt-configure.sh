#!/bin/sh
echo "### configure repository for apt-mirror2"

curl -s https://packagecloud.io/install/repositories/nE0sIghT/apt-mirror2/script.deb.sh | \
    bash


apt-get update