CREATE DATABASE temp1;
create database temp2;

CREATE DATABASE college;

drop database temp1;
DROP DATABASE temp2;#deleting database

USE college;#using the created database college

CREATE TABLE student(
   id INT PRIMARY KEY,
   name VARCHAR(50),
   age INT NOT NULL
);

