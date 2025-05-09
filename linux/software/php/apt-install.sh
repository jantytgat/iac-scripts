#!/bin/sh
echo "### install php"
DEBIAN_FRONTEND="noninteractive" apt-get install -y php php-mysql php-curl php-gd php-intl php-pear php-imap php-memcache php-pspell php-tidy php-xmlrpc php-mbstring php-gmp php-json php-xml
