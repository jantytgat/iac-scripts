#!/bin/sh
echo "### configure postgresql"

version=$1
ipv4_listen=$2

echo "### --> configure listen address"
sed -i "s/#listen_addresses = 'localhost'/listen_addresses = '$ipv4_listen'/" /etc/postgresql/$version/main/postgresql.conf

echo "### --> configure client authentication for external clients"
echo 'host    all      all              0.0.0.0/0                    md5' | sudo tee -a /etc/postgresql/$version/main/pg_hba.conf
echo 'host    all      all              ::/0                         md5' | sudo tee -a /etc/postgresql/$version/main/pg_hba.conf

echo "### --> restart postgresql"
systemctl restart postgresql

echo "### --> DONE <--"