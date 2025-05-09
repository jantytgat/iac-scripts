#!/bin/sh
echo "### run apt-get dist-upgrade"
DEBIAN_FRONTEND="noninteractive" apt-get update
DEBIAN_FRONTEND="noninteractive" apt-get dist-upgrade -y -q
