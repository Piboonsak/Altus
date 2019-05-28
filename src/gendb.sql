CREATE USER director IDENTIFIED BY 'P@ssw0rd';

CREATE DATABASE directorexport CHARACTER SET utf8;
GRANT ALL PRIVILEGES ON directorexport.* TO 'director'@'%';
GRANT ALL PRIVILEGES ON directorexport.* TO 'director'@'localhost';
GRANT ALL PRIVILEGES ON directorexport.* TO 'root'@'localhost';

CREATE DATABASE director CHARACTER SET utf8;
GRANT ALL PRIVILEGES ON director.* TO 'director'@'%';
GRANT ALL PRIVILEGES ON director.* TO 'director'@'localhost';
GRANT ALL PRIVILEGES ON director.* TO 'root'@'localhost' ;

grant all on directorexport.* TO 'root'@'%' IDENTIFIED BY 'P@ssw0rd' with grant option;
grant all on director.* TO 'root'@'%' IDENTIFIED BY 'P@ssw0rd' with grant option;
