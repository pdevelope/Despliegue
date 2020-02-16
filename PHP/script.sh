#!/bin/bash
#Ejecutar como sudo su
#
apt-get update && apt-get upgrade
apt-get install php
apt-get install php-mysql libapache2-mod-php
mkdir /var/www/practicaDespliegue/
cd /var/www/practicaDespliegue/
cd /etc/apache2/sites-available/
{echo "<VirtualHost *:80>"
echo "ServerAdmin webmaster@localhost"
echo "DocumentRoot /var/www/practicaDespliegue"
echo "ServerName despliegue.com"
echo "</VirtualHost>"
}> despliegue.conf
a2ensite daw.conf
systemctl reload apache2