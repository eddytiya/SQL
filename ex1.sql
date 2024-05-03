#SHOW DATABASES;

CREATE DATABASE IF NOT EXISTS xyz_company;

USE xyz_company;

CREATE TABLE IF not EXISTS employee(
id INT PRIMARY KEY,
name VARCHAR(100),
salary INT
);

INSERT INTO employee(id,name,salary)
VALUES(1,"ADAM",25000),(2,"BOB",30000),(3,"CASEY",40000);

SELECT * FROM employee;









