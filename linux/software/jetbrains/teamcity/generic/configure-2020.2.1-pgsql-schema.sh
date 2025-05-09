#!/bin/sh
echo "########################################################################"
echo "LINUX - SOFTWARE - JETBRAINS - TEAMCITY - GENERIC - Configure Database"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"

database_name=$1
database_user=$2
database_password=$3
database_schema=$4

su -c "createdb $database_name" postgres
su -c "psql -c \"CREATE ROLE $database_user LOGIN PASSWORD '$database_password' NOINHERIT CREATEDB;\" -d $database_name -U postgres" postgres
su -c "psql -c \"CREATE SCHEMA IF NOT EXISTS $database_schema AUTHORIZATION $database_user;\" -d $database_name -U postgres" postgres

echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "