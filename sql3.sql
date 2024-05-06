USE college;

select * from student;

#HAVING CLAUSE
#suppose you want to find the count of the student only in those cities where the marks is above 90
/*
GENERAL ORDER OF THIS CLAUSES AND ALL

SELECT columns
FROM table_name
WHERE condition
GROUP BY column(s)
HAVING condition
ORDER BY COLUMNS(s) ASC/DESC;

WHERE CLAUSE IS APPLIED ON ROWS
WHILE
HAVING CLAUSE IS APPLIED ON GROUPS
*/

select COUNT(name),CITY
FROM student
GROUP BY CITY
HAVING MAX(marks)>90
order by CITY DESC;

####TABLE RELATED QUERIES

#1.UPDATE: uptaing the existing rows in the rable
/*
syntax:
UPDATE table name
SET col1=value1,col2=value2
WHERE condition
*/

select * from student;

SET SQL_SAFE_UPDATES=0;

UPDATE student
SET grade = "O"
WHERE grade = "A";
 
SELECT * from student; 

UPDATE student
SET grade = "B"
WHERE marks BETWEEN 80 AND 90;

SELECT * from student; 

#UPDATING 1 MARK IN EVERYONES MARKSHEET
UPDATE student
SET marks=marks+1;

select * from student;
