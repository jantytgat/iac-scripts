#!/bin/sh
echo "### secure mysql-server"

echo "### --> update root password"
mysql_root_password=$1
mysql -u root -e "UPDATE mysql.user SET authentication_string = PASSWORD($mysql_root_password), password_expired = 'N' WHERE User = 'root';"

echo "### --> restrict remote access"
mysql -u root -e "DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');"

echo "### --> delete users with empty username"
mysql -u root -e "DELETE FROM mysql.user WHERE User='';"

echo "### --> drop test database"
mysql -u root -e "DROP DATABASE test;"

echo "### --> flush privileges"
mysql -u root -e "FLUSH PRIVILEGES;"

echo "### --> DONE <--"