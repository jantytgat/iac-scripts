#!/bin/sh
echo "### run apt-get upgrade"
DEBIAN_FRONTEND="noninteractive" apt-get upgrade -y -q
