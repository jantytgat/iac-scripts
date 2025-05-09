#!/bin/sh
echo "### install mariadb-server"
DEBIAN_FRONTEND="noninteractive" apt-get install -y software-properties-common mariadb-server mariadb-client
