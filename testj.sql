create database testj;
drop database testj;
use testj;
#drop database blog;


create user 'leyla'@'localhost' identified by 'password12345678';
create user 'laurentlalpiniste'@'localhost' identified by 'objectifevrest2023';
grant all privileges on *.* to 'leyla'@'localhost';
show grants for 'leyla'@'localhost';
CREATE TABLE users (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
name VARCHAR(100),
email VARCHAR(255)NOT NULL,
birthdate DATE
);