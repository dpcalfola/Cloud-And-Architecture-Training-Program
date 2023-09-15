#!/bin/bash

apt-get update -y
apt-get install -y php libapache2-mod-php php-mysql
sudo service apache2 restart