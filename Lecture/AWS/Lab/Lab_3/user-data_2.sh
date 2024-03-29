#!/bin/bash

# Install and run Web
yum install -y httpd mysql
amazon-linux-extras install -y php7.2
aws s3 cp s3://fola-s3-bucket-1/mzc_web02.zip .
unzip mzc_web02.zip -d /var/www/html/
systemctl start httpd
systemctl enable httpd

# Install stress package
sudo amazon-linux-extras install -y epel
sudo yum install -y stress