CREATE USER director IDENTIFIED BY 'P@ssw0rd';

CREATE DATABASE directorexport CHARACTER SET utf8;
GRANT ALL PRIVILEGES ON directorexport.* TO 'director'@'%';
GRANT ALL PRIVILEGES ON directorexport.* TO 'director'@'localhost' IDENTIFIED BY 'P@ssw0rd';
GRANT ALL PRIVILEGES ON directorexport.* TO 'root'@'localhost' IDENTIFIED BY 'P@ssw0rd';

CREATE DATABASE director CHARACTER SET utf8;
GRANT ALL PRIVILEGES ON director.* TO 'director'@'%';
GRANT ALL PRIVILEGES ON director.* TO 'director'@'localhost' IDENTIFIED BY 'P@ssw0rd';
GRANT ALL PRIVILEGES ON director.* TO 'root'@'localhost' IDENTIFIED BY 'P@ssw0rd';

grant all on directorexport.* TO 'root'@'%' IDENTIFIED BY 'P@ssw0rd' with grant option;
grant all on director.* TO 'root'@'%' IDENTIFIED BY 'P@ssw0rd' with grant option;

## CDH user and database

## CREATE DATABASE
CREATE SCHEMA `scm` DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
CREATE SCHEMA `amon` DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
CREATE SCHEMA `rman` DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
CREATE SCHEMA `hue` DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
CREATE SCHEMA `metastore` DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
CREATE SCHEMA `sentry` DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
CREATE SCHEMA `nav` DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
CREATE SCHEMA `navms` DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
CREATE SCHEMA `oozie` DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;


## CREATE USER
CREATE USER 'cloudera'@'localhost' IDENTIFIED BY 'P@ssw0rd';
CREATE USER 'cloudera'@'%' IDENTIFIED BY 'P@ssw0rd';
CREATE USER 'scm'@'localhost' IDENTIFIED BY 'P@ssw0rd';
CREATE USER 'scm'@'%' IDENTIFIED BY 'P@ssw0rd';
CREATE USER 'amon'@'localhost' IDENTIFIED BY 'P@ssw0rd';
CREATE USER 'amon'@'%' IDENTIFIED BY 'P@ssw0rd';
CREATE USER 'rman'@'localhost' IDENTIFIED BY 'P@ssw0rd';
CREATE USER 'rman'@'%' IDENTIFIED BY 'P@ssw0rd';
CREATE USER 'hue'@'localhost' IDENTIFIED BY 'P@ssw0rd';
CREATE USER 'hue'@'%' IDENTIFIED BY 'P@ssw0rd';
CREATE USER 'hive'@'localhost' IDENTIFIED BY 'P@ssw0rd';
CREATE USER 'hive'@'%' IDENTIFIED BY 'P@ssw0rd';
CREATE USER 'sentry'@'localhost' IDENTIFIED BY 'P@ssw0rd';
CREATE USER 'sentry'@'%' IDENTIFIED BY 'P@ssw0rd';
CREATE USER 'nav'@'localhost' IDENTIFIED BY 'P@ssw0rd';
CREATE USER 'nav'@'%' IDENTIFIED BY 'P@ssw0rd';
CREATE USER 'navms'@'localhost' IDENTIFIED BY 'P@ssw0rd';
CREATE USER 'navms'@'%' IDENTIFIED BY 'P@ssw0rd';
CREATE USER 'oozie'@'localhost' IDENTIFIED BY 'P@ssw0rd';
CREATE USER 'oozie'@'%' IDENTIFIED BY 'P@ssw0rd';

## GRANT PRIVILEGES
GRANT ALL ON *.* TO 'cloudera'@'%' IDENTIFIED BY 'P@ssw0rd';
GRANT ALL ON *.* TO 'cloudera'@'localhost' IDENTIFIED BY 'P@ssw0rd';
GRANT ALL PRIVILEGES ON metastore.* TO 'scm'@'localhost' IDENTIFIED BY 'P@ssw0rd';
GRANT ALL PRIVILEGES ON metastore.* TO 'scm'@'%' IDENTIFIED BY 'P@ssw0rd';
GRANT ALL PRIVILEGES ON amon.* TO 'amon'@'localhost' IDENTIFIED BY 'P@ssw0rd';
GRANT ALL PRIVILEGES ON amon.* TO 'amon'@'%' IDENTIFIED BY 'P@ssw0rd';
GRANT ALL PRIVILEGES ON rman.* TO 'rman'@'localhost' IDENTIFIED BY 'P@ssw0rd';
GRANT ALL PRIVILEGES ON rman.* TO 'rman'@'%' IDENTIFIED BY 'P@ssw0rd';
GRANT ALL PRIVILEGES ON *.* TO 'hue'@'localhost' IDENTIFIED BY 'P@ssw0rd';
GRANT ALL PRIVILEGES ON *.* TO 'hue'@'%' IDENTIFIED BY 'P@ssw0rd';
GRANT ALL PRIVILEGES ON metastore.* TO 'hive'@'localhost' IDENTIFIED BY 'P@ssw0rd';
GRANT ALL PRIVILEGES ON metastore.* TO 'hive'@'%' IDENTIFIED BY 'P@ssw0rd';
GRANT ALL PRIVILEGES ON sentry.* TO 'sentry'@'localhost' IDENTIFIED BY 'P@ssw0rd';
GRANT ALL PRIVILEGES ON sentry.* TO 'sentry'@'%' IDENTIFIED BY 'P@ssw0rd';
GRANT ALL PRIVILEGES ON nav.* TO 'nav'@'localhost' IDENTIFIED BY 'P@ssw0rd';
GRANT ALL PRIVILEGES ON nav.* TO 'nav'@'%' IDENTIFIED BY 'P@ssw0rd';
GRANT ALL PRIVILEGES ON navms.* TO 'navms'@'localhost' IDENTIFIED BY 'P@ssw0rd';
GRANT ALL PRIVILEGES ON navms.* TO 'navms'@'%' IDENTIFIED BY 'P@ssw0rd';
GRANT ALL PRIVILEGES ON oozie.* TO 'oozie'@'localhost' IDENTIFIED BY 'P@ssw0rd';
GRANT ALL PRIVILEGES ON oozie.* TO 'oozie'@'%' IDENTIFIED BY 'P@ssw0rd';

FLUSH PRIVILEGES;
