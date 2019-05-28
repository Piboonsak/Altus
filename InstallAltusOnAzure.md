# [Cloudera Altus Director 6.2.x](https://www.cloudera.com/documentation/director/latest/topics/director_get_started.html#xd_583c10bfdbd326ba-590cb1d1-149e9ca9886--6f69)


## [Install Cloudera Altus On Azure](https://www.cloudera.com/documentation/director/latest/topics/director_get_started_azure_obtain_credentials.html)

### [STEP 1.Obtaining Credentials for Altus Director](https://www.cloudera.com/documentation/director/latest/topics/director_get_started_azure_obtain_credentials.html#concept_jrx_gfp_hw)

### [STEP 2.Setting up Azure Resources](https://www.cloudera.com/documentation/director/latest/topics/director_get_started_azure_set_up_resources.html#concept_a5x_zmw_hw)

### [STEP 3.Setting Up Dynamic DNS on Azure](https://www.cloudera.com/documentation/director/latest/topics/director_get_started_azure_ddns.html#setting_up_ddns)

```
[root@Altus ~]# mkdir /etc/named/zones
[root@Altus ~]# touch /etc/named/named.conf.local
[root@Altus ~]# touch /etc/named/zones/db.internal
[root@Altus ~]# touch /etc/named/zones/db.reverse
[root@Altus ~]# ls /etc/named/zones/
db.internal  db.reverse
```
