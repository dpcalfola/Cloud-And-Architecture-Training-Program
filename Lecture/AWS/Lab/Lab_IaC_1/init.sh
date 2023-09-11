#!/bin/bash

yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<h1>Test Web Page</h1>" > /var/www/html/index.html