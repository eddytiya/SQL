#revisiting foreign keys
USE college;

#creating new tables
CREATE TABLE dept(
id INT PRIMARY KEY,
name VARCHAR(50)
);

CREATE TABLE teacher(
id INT PRIMARY KEY,
name VARCHAR(50),
dept_id INT,
FOREIGN KEY(dept_id) REFERENCES dept(id)
ON UPDATE CASCADE
ON DELETE CASCADE
);




INSERT INTO dept
VALUES
(101,"english"),
(102,"IT");

select * from dept;


INSERT INTO teacher
VALUES
(101,"adam",101),
(102,"eve",102);

select * from teacher;

#suppose ek din dept id IT ki 103 ho gayi

UPDATE dept 
SET id=103
WHERE id=102;

select * from dept;
select * from teacher;

#suppose english dept ki id 111 ho gayi


UPDATE dept 
SET id=111
WHERE id=101;


select * from dept;
select * from teacher;