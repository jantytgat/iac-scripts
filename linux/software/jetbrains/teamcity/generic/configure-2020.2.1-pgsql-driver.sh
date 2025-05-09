#!/bin/sh
echo "########################################################################"
echo "LINUX - SOFTWARE - JETBRAINS - TEAMCITY - GENERIC - Configure PostgreSQL driver"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"


target_data_path=$1

### Create JDBC-driver directory in data path
mkdir -p $target_data_path/lib/jdbc
cd $target_data_path/lib/jdbc

### Download JDBC-driver
wget https://jdbc.postgresql.org/download/postgresql-42.2.18.jar


echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "

