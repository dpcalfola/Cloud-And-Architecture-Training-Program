#!/bin/bash
yum install -y httpd mysql
amazon-linux-extras install -y php7.2
amazon-linux-extras install -y epel
yum install -y stress
aws s3 cp s3://fola-s3-bucket-1/mzc_web01-1.zip .
unzip mzc_web01-1.zip -d /var/www/html
systemctl start httpd
systemctl enable httpd