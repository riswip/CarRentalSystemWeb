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

---------- [ TABLE USERS ] ----------
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
transmission varchar(50),
plate varchar(50) UNIQUE,
rateHour decimal(9,2),
passenger int,
carStatus varchar(50),
image varchar(255),
img_path varchar(255),
createdDateTime datetime NOT NULL DEFAULT current_timestamp()
);

ALTER TABLE car AUTO_INCREMENT = 10000;

---------- [ TABLE IMAGES ] ----------
CREATE TABLE images (
id int(5) NOT NULL PRIMARY KEY AUTO_INCREMENT,
image varchar(255),
img_path varchar(255)
-- carID int(5),
-- CONSTRAINT FK_carID FOREIGN KEY (carID) REFERENCES car(id)
);

ALTER TABLE car AUTO_INCREMENT = 10000;

---------- [ TABLE BOOKING ] ----------






