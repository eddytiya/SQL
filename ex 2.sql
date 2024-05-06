SHOW DATABASES;

CREATE DATABASE bank;
use bank;

CREATE TABLE customers(
customer_id INT PRIMARY KEY,
customer VARCHAR(50),
mode varchar(20),
city varchar(20)
);


INSERT INTO customers(customer_id,customer,mode,city)
VALUES
(101,"Olivia Barrett","Netbanking","Portland"),
(102,"Ethan Sinclair","Credit Card","Miami"),
(103,"Maya Hernandez","Credit Card","Seattle"),
(104,"Liam Donovan","Netbanking","Denver"),
(105,"Sofia Nguyen","Credit Card","New Orleans"),
(106,"Caleb Foster","Debit Card","Minneapolis"),
(107,"Ava Patel","Debit Card","Phoenix"),
(108,"Lucas Carter","Netbnking","Boston"),
(109,"Isabella Martinez","Netbanking","Nashville"),
(110,"Jackson Brooks","Credit Card","Boston");

SELECT * FROM customers;

#find the total payment according to the each payment method
SELECT mode FROM customers GROUP BY mode;
SELECT mode,COUNT(customers) FROM customers GROUP BY mode;              