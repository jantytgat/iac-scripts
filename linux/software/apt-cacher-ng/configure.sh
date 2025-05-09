#!/bin/sh
echo "### configure apt-cacher-ng"
echo "PassThroughPattern: .*" | sudo tee -a /etc/apt-cacher-ng/acng.conf
echo "VerboseLog: 2" | sudo tee -a /etc/apt-cacher-ng/acng.conf
echo "Debug: 5" | sudo tee -a /etc/apt-cacher-ng/acng.conf
