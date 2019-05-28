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
