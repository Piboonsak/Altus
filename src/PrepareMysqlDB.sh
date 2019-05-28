#!/bin/bash

## For Prepare mysql
sudo service mysqld stop

### Create slow log for mysql
mkdir -p /var/log/mysql-slow.log
chown mysql:mysql /var/log/mysql-slow.log

### After Stop Mysql server
mkdir -p /var/lib/mysql/bk
chown mysql:mysql /var/log/mysql/bk
mv /var/lib/mysql/ib_logfile0 /var/lib/mysql/bk/ib_logfile0
mv /var/lib/mysql/ib_logfile1 /var/lib/mysql/bk/ib_logfile1

###enable mysql in service
sudo /sbin/chkconfig --list mysqld mysqld 0:off 1:off 2:on 3:on 4:on 5:on 6:off

###Start mysql
sudo service mysqld start

###Install secure again
sudo /usr/bin/mysql_secure_installation

###Installing the MySQL JDBC Driver
#### Download file

#wget https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-5.1.47.tar.gz
cp ..src/mysql-connector-java-5.1.47.tar.gz /root
tar zxvf mysql-connector-java-5.1.47.tar.gz

### 

mkdir -p /usr/share/java/
sudo cp mysql-connector-java-5.1.47/mysql-connector-java-5.1.47-bin.jar /usr/share/java/mysql-connector-java.jar
