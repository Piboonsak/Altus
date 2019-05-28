# [Cloudera Altus Director 2.8.x](https://www.cloudera.com/documentation/director/2-8-x/topics/director_get_started.html#xd_583c10bfdbd326ba-590cb1d1-149e9ca9886--6f69)

## [Step 1.Configuring Storage for Cloudera Director](https://www.cloudera.com/documentation/director/2-8-x/topics/director_storage.html)

### [Mysql for director](https://www.cloudera.com/documentation/director/2-8-x/topics/director_use_ext_db_for_director_data.html#concept_r2g_z3y_f2b)

-Run file 
 - [ ] src/PrepareVM.sh
 - [ ] src/PrepareMysqlDB.sh
 - [ ] src/createDB.sh

### [Configuring Cloudera Director Server to use the MySQL Database](https://www.cloudera.com/documentation/director/2-8-x/topics/director_use_ext_db_for_director_data.html#config_director_to_use_mysql)

[Using MySQL for Cloudera Director Server](https://www.cloudera.com/documentation/director/2-8-x/topics/director_use_ext_db_for_director_data.html#xd_583c10bfdbd326ba-590cb1d1-149e9ca9886--6fb9)

- copy file src/etc/cloudera-director-server/application.properties to path /etc/cloudera-director-server/

'cp src/etc/cloudera-director-server/application.properties /etc/cloudera-director-server/'

### Stop Director when install DB

DELETE FROM AUTHORITIES;<br>
DELETE FROM USERS;<br>
DELETE FROM SERVER_CONFIGS;<br>

#### Run command to dump DB

mysqldump -u [user] -p --no-create-info directorexport > directorexport.sql

mysql -u [user] -p director < directorexport.sql

## [Installing Cloudera Director Server and Client on Azure ](https://www.cloudera.com/documentation/director/2-8-x/topics/director_get_started_azure_install_director.html#concept_yrw_jwc_mw)

### [Install JDK](https://www.digitalocean.com/community/tutorials/how-to-install-java-on-centos-and-fedora)
'sudo yum install java-1.8.0-openjdk-devel'

#### Set JAVA_HOME in .bashrc
add last line of file

export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.212.b04-0.el7_6.x86_64/jre

[root@altus ~]# source .bashrc
[root@altus ~]# echo $JAVA_HOME
/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.212.b04-0.el7_6.x86_64/jre


### [Add the Cloudera Director repository to the package manager:](https://www.cloudera.com/documentation/director/2-8-x/topics/director_get_started_azure_install_director.html#concept_mdy_1jj_mw)

'cd /etc/yum.repos.d/'

'sudo wget "https://archive.cloudera.com/director/redhat/7/x86_64/director/cloudera-director.repo" '

'sudo yum install cloudera-director-server cloudera-director-client'


