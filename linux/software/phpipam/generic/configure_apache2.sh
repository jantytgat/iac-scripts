#!/bin/sh
echo "########################################################################"
echo "LINUX - SOFTWARE - PHPIPAM - GENERIC - Configure Apache2"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"

template_basepath=$1
install_path=$2
servername=$3
serveralias=$4
serveradmin=$5

cp $template_basepath/linux/software/phpipam/templates/etc/apache2/sites-available/phpipam.conf /etc/apache2/sites-available/.

sed -i "s~/var/www/html/phpipam~$install_path~" /etc/apache2/sites-available/phpipam.conf
sed -i "s/<servername>/$servername/" /etc/apache2/sites-available/phpipam.conf
sed -i "s/<serveralias>/$serveralias/" /etc/apache2/sites-available/phpipam.conf
sed -i "s/<serveradmin>/$serveradmin/" /etc/apache2/sites-available/phpipam.conf

a2ensite phpipam.conf
systemctl restart apache2


echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "
