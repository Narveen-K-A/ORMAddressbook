CREATE DATABASE ormaddress;

USE ormaddress;

CREATE TABLE register(Firstname varchar(30),
						Emailid varchar(30),
						Username varchar(30),
						Userpassword varchar(30),
						Cpassword varchar(30));

SELECT * FROM register;

CREATE TABLE contacts(Personid int IDENTITY (1,1) NOT NULL,
						Title varchar(5),
						Firstname varchar(20),
						Lastname varchar(20),
						Gender varchar(20),
						Dateofbirth varchar(20),
						Photo varchar(30),
						Addressofuser varchar(20),
						Street varchar(20),
						Emailid varchar(20),
						Phonenumber varchar(20)
						PRIMARY KEY (Personid));

SELECT * FROM contacts;

