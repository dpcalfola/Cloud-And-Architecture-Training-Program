#!/bin/bash

yum install -y httpd
sleep 15
cd /var/www/html
wget https://kr.object.ncloudstorage.com/ncp-manual/ncp/ncp-lab.tgz
sleep 10
tar xvfz ncp-lab.tgz
rm -rf /etc/yum.repos.d/*
cp -rf yum.repos.d/* /etc/yum.repos.d/
cat phpadd  >> /etc/httpd/conf/httpd.conf
yum install -y redis php php-redis mariadb-server php-mysql mongodb-org php-mongodb
sleep 60

systemctl enable httpd
systemctl enable mariadb
systemctl enable redis
systemctl enable mongod

systemctl start httpd
systemctl start mariadb
systemctl start redis
systemctl start mongod

mysql < dbstep1.sql
mysql < dbstep2.sql