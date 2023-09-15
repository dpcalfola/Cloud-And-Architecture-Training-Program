#!/bin/bash


# Modify DB conn data
sed -i 's/localhost/192.168.56.51/g' /var/www/html/login.php
sed -i 's/localhost/192.168.56.51/g' /var/www/html/Login_Successful.php
sed -i 's/localhost/192.168.56.51/g' /var/www/html/createuser.php

# Install Apache and PHP
apt-get update -y
apt-get install -y php libapache2-mod-php php-mysql mysql-client
sudo service apache2 restart
