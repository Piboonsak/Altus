# [Cloudera Altus Director 2.8.x](https://www.cloudera.com/documentation/director/2-8-x/topics/director_get_started.html#xd_583c10bfdbd326ba-590cb1d1-149e9ca9886--6f69)

## [Step 1.Configuring Storage for Cloudera Director](https://www.cloudera.com/documentation/director/2-8-x/topics/director_storage.html)

### Mysql for director
-Run file 
 - [ ] src/PrepareVM.sh
 - [ ] src/PrepareMysqlDB.sh


### [Configuring Cloudera Director Server to use the MySQL Database](https://www.cloudera.com/documentation/director/2-8-x/topics/director_use_ext_db_for_director_data.html#config_director_to_use_mysql)




### Stop Director when install DB

DELETE FROM AUTHORITIES;<br>
DELETE FROM USERS;<br>
DELETE FROM SERVER_CONFIGS;<br>

#### Run command to dump DB
mysqldump -u [user] -p --no-create-info directorexport > directorexport.sql
