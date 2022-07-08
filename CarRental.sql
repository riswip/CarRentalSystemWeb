CREATE DATABASE carrental;
USE carrental;

-- TABLE USER --
CREATE TABLE users(
id int(5) NOT NULL PRIMARY KEY AUTO_INCREMENT,
userName varchar(50),
userNickName varchar(50),
age int,
phoneNo varchar(20),
gender varchar(10),
email varchar(50) UNIQUE,
pass varchar(50),
createdDatetime datetime NOT NULL DEFAULT current_timestamp()
);

ALTER TABLE users AUTO_INCREMENT = 10000;