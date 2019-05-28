#!/bin/bash

## For Prepare Cenos 7 server

yum update

yum install -y nano

yum install -y git

## [Install mysql Follow this Link](https://www.digitalocean.com/community/tutorials/how-to-install-mysql-on-centos-7)

wget https://dev.mysql.com/get/mysql57-community-release-el7-9.noarch.rpm

md5sum mysql57-community-release-el7-9.noarch.rpm

sudo rpm -ivh mysql57-community-release-el7-9.noarch.rpm

sudo yum install mysql-server

sudo systemctl status mysqld

sudo grep 'temporary password' /var/log/mysqld.log

## output should be 2019-05-28T04:18:12.811710Z 1 [Note] A temporary password is generated for root@localhost: JFqL6TWaxr#n

sudo mysql_secure_installation
