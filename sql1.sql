CREATE DATABASE temp1;
create database temp2;
DROP DATABASE college;

CREATE DATABASE IF NOT EXISTS college;

drop database temp1;
DROP DATABASE temp2;#deleting database

USE college;#using the created database college

#creating a table
CREATE TABLE student(
   id INT PRIMARY KEY,
   name VARCHAR(50),
   age INT NOT NULL
);

#adding data into the table

INSERT INTO student VALUES(1,"ADITYA",21);
INSERT INTO student VALUES(2,"VIRAT",35);

#PRINTING TABLE
SELECT * FROM student;

#DB REALATED QUERIES
DROP DATABASE IF EXISTS COMPANY;

SHOW DATABASES;

SHOW TABLES;

#TABLE RELATED QUERIES









