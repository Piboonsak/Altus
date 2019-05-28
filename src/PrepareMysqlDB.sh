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

# enable mysql in service
sudo /sbin/chkconfig --list mysqld mysqld 0:off 1:off 2:on 3:on 4:on 5:on 6:off

#Start mysql
sudo service mysqld start
