#!/bin/bash
sudo apt-get update

sudo apt-get -y install mysql-server


# sed -i "s/bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" "/etc/mysql/my.cnf"

echo "ALTER user 'root'@'localhost' IDENTIFIED BY 'cisco'; GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost' WITH GRANT OPTION; UPDATE mysql.user SET plugin='mysql_native_password' WHERE USER='root'; FLUSH PRIVILEGES;" | sudo mysql -u root --password=


sudo service mysql restart


mysql -uroot -p'cisco' -e "DROP DATABASE IF EXISTS test;
  CREATE DATABASE test;
  USE test;
  CREATE TABLE user (uid INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    ID VARCHAR(20), PW VARCHAR(20), submitdate DATETIME);"


sudo service mysql restart