#!/bin/sh
echo "### install libapache2-mod-php"
DEBIAN_FRONTEND="noninteractive" apt-get install -y libapache2-mod-php
systemctl restart apache2