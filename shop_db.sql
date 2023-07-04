create database shop_db;
drop user 'admin'@'localhost';
CREATE USER 'admin'@'localhost' IDENTIFIED BY 'password123';
CREATE USER  'developpeur'@'localhost' IDENTIFIED BY 'password456';
CREATE USER 'admin'@'localhost' IDENTIFIED BY 'password123';
GRANT CREATE, ALTER, DROP, INDEX, UPDATE
ON *.* TO 'developpeur'@'localhost' WITH GRANT OPTION;
GRANT CREATE, ALTER, DROP, INSERT, UPDATE, DELETE, SELECT, REFERENCES
ON *.* TO 'admin'@'localhost' WITH GRANT OPTION;

CREATE TABLE Customer (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
username VARCHAR(16) UNIQUE,
email VARCHAR(255) NOT NULL UNIQUE,
password VARCHAR (32) NOT NULL,
create_time TIMESTAMP
);

CREATE TABLE Adress (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
road_number INT,
road_name VARCHAR(100) NOT NULL,
zip_code CHAR (5) NOT NULL,
city_name VARCHAR(100) NOT NULL,
country_name VARCHAR(100) NOT NULL
);

CREATE TABLE Order (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
ref VARCHAR(45) UNIQUE NOT NULL,
date DATE NOT NULL,
shipping_cost ,
total_amount ,

);

