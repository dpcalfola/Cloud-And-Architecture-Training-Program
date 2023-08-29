#!/bin/bash

yum -y install httpd php
systemctl enable httpd
cd /var/www/html
wget https://kr.private.object.ncloudstorage.com/ncp-manual/nca/nca-lab.tgz
tar xvfz nca-lab.tgz
cat phpadd >> /etc/httpd/conf/httpd.conf
systemctl restart httpd