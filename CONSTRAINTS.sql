#constraints
show databases;
use college;

select*from student;

#UNIQUE AND PRIMARY KEY
CREATE TABLE temp1(
id INT UNIQUE
);

INSERT INTO temp1 VALUES (101);
#INSERT INTO temp1 VALUES (101); AGAIN RUNNING THIS CODE WILL NOT RUN AND WILLS HOW DUPICATE ERROR

CREATE TABLE temp3(
id INT,
name VARCHAR(50),
age INT,
city VARCHAR(20),
PRIMARY KEY(id,name)
);
#OR
create table temp(
id int primary key
);

#foreign key
create table temp4(
cust_id int,
FOREIGN KEY (cust_id) references temp(id)
);

#DEFAULT

create table EMP(
id int primary key,
salary INT DEFAULT 25000
);

INSERT INTO EMP(id) VALUES (101);

SELECT * FROM EMP;

