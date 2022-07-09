CREATE DATABASE carrental;
USE carrental;

---------- [ TABLE ROLE ] ----------
CREATE TABLE role (
id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
rolename varchar(50),
descs varchar(100)
);

INSERT INTO role(rolename, descs)
VALUES	('Admin','Manage users, cars, booking details'),
		('Customer','Create reservations for car');

---------- [ TABLE USER ] ----------
CREATE TABLE users (
id int(5) NOT NULL PRIMARY KEY AUTO_INCREMENT,
userName varchar(50),
userNickName varchar(50),
age int,
phoneNo varchar(20),
gender varchar(10),
email varchar(50) UNIQUE,
pass varchar(50),
roleid int DEFAULT 2,
createdDatetime datetime NOT NULL DEFAULT current_timestamp(),
CONSTRAINT FK_roleid FOREIGN KEY (roleid) REFERENCES role(id)
);

ALTER TABLE users AUTO_INCREMENT = 10000;

INSERT INTO users(userName, email, pass, roleid)
VALUES	('Admin','admin@mail.com','1234',1);

---------- [ TABLE CAR ] ----------
CREATE TABLE car (
id int(5) NOT NULL PRIMARY KEY AUTO_INCREMENT,
carName varchar(50),
brand varchar(50),
trasmission varchar(50),
plate varchar(50),
rateHour decimal(9,2),
passanger int,
carStatus varchar(50),
createdDateTime datetime NOT NULL DEFAULT current_timestamp()
);

ALTER TABLE users AUTO_INCREMENT = 10000;

---------- [ TABLE BOOKING ] ----------






