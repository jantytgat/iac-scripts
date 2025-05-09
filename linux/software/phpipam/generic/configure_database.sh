#!/bin/sh
echo "########################################################################"
echo "LINUX - SOFTWARE - PHPIPAM - GENERIC - Configure MariaDB"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"

mariadb_hostname=$1
mariadb_port=$2
mariadb_username=$3
mariadb_password=$4
ipam_hostname=$5
ipam_database=$6
ipam_username=$7
ipam_password=$8
application_password=$9
phpipam_install_path=$10

mysql -h $mariadb_hostname -P $mariadb_port -u $mariadb_username -p$mariadb_password -e "CREATE DATABASE $ipam_database;"
mysql -h $mariadb_hostname -P $mariadb_port -u $mariadb_username -p$mariadb_password -e "GRANT ALL ON $ipam_database.* TO $ipam_username@$ipam_hostname IDENTIFIED BY '$ipam_password';"
mysql -h $mariadb_hostname -P $mariadb_port -u $mariadb_username -p$mariadb_password -e "FLUSH PRIVILEGES;"


sed -i "s/db\['host'\] = 'localhost'/db\['host'\] = '$mariadb_hostname'/" $phpipam_install_path/config.php
sed -i "s/db\['port'\] = 3306/db\['port'\] = $mariadb_port/" $phpipam_install_path/config.php
sed -i "s/db\['user'\] = 'phpipam'/db\['user'\] = '$ipam_username'/" $phpipam_install_path/config.php
sed -i "s/db\['pass'\] = 'phpipamadmin'/db\['pass'\] = '$ipam_password'/" $phpipam_install_path/config.php
sed -i "s/db\['name'\] = 'phpipam'/db\['name'\] = '$ipam_database'/" $phpipam_install_path/config.php

mysql -h $mariadb_hostname -P $mariadb_port -u $mariadb_username -p$mariadb_password $ipam_database < $phpipam_install_path/db/SCHEMA.sql

php $phpipam_install_path/functions/scripts/reset-admin-password.php $application_password

mysql -h $mariadb_hostname -P $mariadb_port -u $mariadb_username -p$mariadb_password -e "UPDATE $ipam_database.users SET passChange='No'WHERE id=1;"

echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "
