## TASK

1. Create VPC (192.168.0.0/16)

2. Create Internet Gateway

3. Create Subnet
    * Public Subnet 1
    * Public Subnet 2
    * Private Subnet 1
    * Private Subnet 2

4. Create Security Group
    * Web Security Group (WEB-SG)
        * 80, 22, ICMP
    * DB Security Group (DB-SG)
        * 3306

5. Create Route Table
    * Public Route Table
        * 0.0.0.0/0 -> Internet Gateway
        * Associate Public Subnet 1, 2

6. DB
    * Create DB subnet group
        * Match with Private subnet 1, 2
    * Create DB
        * DB: MySQL
        * Set
            * Security Group
            * DB subnet group
            * Initial DB name
            * Deny Public Access

7. Create EC2 Instance
    ```bash
    #!/bin/bash
    
    yum install -y httpd mysql
    amazon-linux-extras install -y php7.2
    aws s3 cp s3://fola-s3-bucket-1/mzc_basic.zip .
    unzip mzc_basic.zip -d /var/www/html/
    systemctl start httpd
    systemctl enable httpd
    ```

8. SSH to EC2 Instance
    ```bash
    ssh -i "PUBLIC_KEY.pem" ec2-user@<PUBLIC_IP>
    ``` 

9. Create Database Schema
    ```shell
    mysql -u admin -p -h RDS Endpoint   
    mysql -u admin -p -h lab-db-mysql.ch36ustafevu.ap-northeast-2.rds.amazonaws.com
    ```

   ```mysql
   USE webdb;
   
   CREATE TABLE subject(
   id int(11) NOT NULL AUTO_INCREMENT,
   title varchar(45) NOT NULL,
   description text,
   created datetime NOT NULL,
   PRIMARY KEY(id)
   ) ENGINE = InnoDB;
   
   SHOW TABLES;
   DESC subject;
   
   CREATE TABLE author(
   id INT(11) NOT NULL AUTO_INCREMENT,
   name VARCHAR(30) NOT NULL,
   profile VARCHAR(200) NULL,
   PRIMARY KEY(id)
   );
   INSERT INTO author(name, profile) VALUES ('Kim', 'Network Instructor');
   INSERT INTO author(name, profile) VALUES ('Lee', 'Server Instructor');
   INSERT INTO author(name, profile) VALUES ('Park', 'Security Instructor');
   
   ALTER TABLE subject ADD COLUMN author_id INT(11);
   
   ```

10. Modify php code

* path: /var/www/html/dbconn.php

```php
<?php
    $db_host = 'RDS EndPoint';
    $db_user = 'admin';
    $db_pass = 'lab-password';
    $db_name = 'usw';

    $conn = mysqli_connect($db_host,$db_user,$db_pass,$db_name);
    /*
    if (!$conn) {
        echo "<script>alert(\"DB Connection False\");</script>";
    }
    else {
        echo "<script>alert(\"DB Connection Success\");</script>";
    }
    */
?>
```


11. Create Instance Image(AMI)

12. Auto Scale Setting

* Create Launch Template
* Create Security Group for ALB
* Create Auto Scaling Group (Private)
* Create Target Group (instance port: 80)
* Create Application Load Balancer (Public)













<hr>

1. S3 버킷 생성 후 해당 소스코드를 업로드 하시오


2. 다음 조건에 일치하도록 EC2 인스턴스를 생성하시오

* Name: Web-Server
* AMI: Amazon Linux 2
* Instance Type: t2.micro
* Create Key-Pair
* Instance Profile: IAM Role 생성 후 EC2 인스턴스에 연결
* User Data:

```bash
#!/bin/bash

yum install -y httpd mysql
amazon-linux-extras install -y php7.2
aws s3 cp s3://fola-s3-bucket-1/mzc_basic.zip .
unzip mzc_basic.zip -d /var/www/html/
systemctl start httpd
systemctl enable httpd
```

### DB

admin/qwe123123
DB name: webdb

###

인스턴스에서 DB 접속

```bash
 mysql -u admin -p -h lab-db-mysql.ch36ustafevu.ap-northeast-2.rds.amazonaws.com
```

```mysql
use webdb;
show tables;
```