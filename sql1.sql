CREATE DATABASE IF NOT EXISTS college;
USE college;

CREATE TABLE student(
rollno INT PRIMARY KEY,
name VARCHAR(50)
);

#select and view

SELECT * FROM student;

INSERT INTO student(rollno,name)
VALUES (88,"ADITYA"),(89,"SAHIL");

SELECT * FROM student;

#FOR SINGLE values
INSERT INTO student VALUES (91,"NAWAZ");

SELECT * FROM student;









