#!/bin/sh
echo "### run apt-get autoclean"
DEBIAN_FRONTEND="noninteractive" apt-get autoclean -q -y
