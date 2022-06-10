-- TABLE SIGNUP CREATION --
CREATE TABLE signup(
id int(10) NOT NULL PRIMARY KEY AUTO_INCREMENT,
name varchar(50),
icno varchar(20) UNIQUE,
age int,
email varchar(50) UNIQUE,
phoneNo varchar(20),
password varchar(50),
gender varchar(10)
);
