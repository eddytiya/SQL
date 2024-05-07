#table related queries:ALTER

use college;

CREATE TABLE students(
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
CITY varchar(20)
);

INSERT INTO students(rollno,name,marks,grade,CITY)
VALUES
(101,"anil",78,"C","Pune"),
(102,"bhumika",93,"A","Mumbai"),
(103,"chetan",85,"B","Mumbai"),
(104,"dhruv",96,"A","Delhi"),
(105,"emanuel",12,"F","Delhi"),
(106,"Farah",82,"B","Delhi");

select * from students;

#ADD column:add age column
ALTER TABLE students
ADD COLUMN age INT NOT NULL DEFAULT 19;

SELECT * FROM students;

#deleting an column
ALTER TABLE students
DROP COLUMN age ;

SELECT * FROM students;

#renaming
ALTER TABLE students
RENAME TO stu ;

SELECT * FROM stu;

# changing the column name
ALTER TABLE students
CHANGE age stu_age INT ;

SELECT *  FROM students;

#modify a column properties

ALTER TABLE students
MODIFY stu_age VARCHAR(2) ;

SELECT * FROM students;

#TRUNCATE TABLE students;
select * from students; 


#practice equestion3
#1. cahnge the col 'naem to full_name'

ALTER TABLE students
CHANGE name full_name varchar(20);
select * from students;

#2.delete all students who scored marks less than 80
SET SQL_SAFE_UPDATES=0;

DELETE FROM students 
WHERE marks<80;

select * from students;

#3.delete the cloumns for grade

alter table students
drop column grade;


select * from students;
