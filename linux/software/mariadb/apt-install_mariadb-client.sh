#!/bin/sh
echo "### install mariadb-client"
DEBIAN_FRONTEND="noninteractive" apt-get install -y software-properties-common mariadb-client
