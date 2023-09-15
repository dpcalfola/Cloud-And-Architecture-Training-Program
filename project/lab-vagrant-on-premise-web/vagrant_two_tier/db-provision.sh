#!/bin/bash

sudo apt-get update -y
sudo apt-get install -y mysql-server php-mysql


sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password cisco'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password cisco'


sed -i "s/bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" "/etc/mysql/mysql.conf.d/mysqld.cnf"

echo "CREATE user 'root'@'%' IDENTIFIED BY 'cisco'; GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION; FLUSH PRIVILEGES;" | sudo mysql -u root --password=cisco

sudo service mysql restart


# Create database and table
mysql -uroot -p'cisco' -e "DROP DATABASE IF EXISTS test;
  CREATE DATABASE test;
  USE test;
  CREATE TABLE user (uid INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    ID VARCHAR(20), PW VARCHAR(20), submitdate DATETIME);"