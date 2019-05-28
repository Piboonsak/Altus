#!/bin/bash

## For Prepare mysql
sudo service mysqld stop

### Create slow log for mysql
mkdir -p /var/log/mysql-slow.log

### After Stop Mysql server
mkdir -p /var/lib/mysql/bk
mv /var/lib/mysql/ib_logfile0 /var/lib/mysql/bk/ib_logfile0
mv /var/lib/mysql/ib_logfile1 /var/lib/mysql/bk/ib_logfile1


