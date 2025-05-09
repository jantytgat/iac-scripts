#!/bin/sh
echo "### disable default websites
a2dissite 000-default
a2dissite default-ssl
systemctl reload apache2
