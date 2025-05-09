#!/bin/sh
echo "### run apt-get autoremove"
DEBIAN_FRONTEND="noninteractive" apt-get autoremove -q -y
