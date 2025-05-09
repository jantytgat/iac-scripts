#!/bin/sh
echo "### install apache2"
DEBIAN_FRONTEND="noninteractive" apt-get install -y apache2
systemctl restart apache2