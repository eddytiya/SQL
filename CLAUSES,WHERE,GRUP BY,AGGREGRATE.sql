USE college;

drop table student;#do this of table already exists

CREATE TABLE student(
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
CITY varchar(20)
);

INSERT INTO student(rollno,name,marks,grade,CITY)
VALUES
(101,"anil",78,"C","Pune"),
(102,"bhumika",93,"A","Mumbai"),
(103,"chetan",85,"B","Mumbai"),
(104,"dhruv",96,"A","Delhi"),
(105,"emanuel",12,"F","Delhi"),
(106,"Farah",82,"B","Delhi");

select * from student;

##select command in detail
#'''select col1,col2 from tablename;'''

SELECT name,rollno FROM student;
SELECT CITY FROM student;

/*DISTINCT KEYWORD:no repeatation*/
SELECT DISTINCT city FROM student;

/*WHERE CLAUSE:TO DEFINE SOME CONDITIONS*/
#'''SELECT COL1,COL2 FROM tablename
#   WHERE conditions'''

SELECT * FROM student WHERE marks>80;
SELECT * FROM student WHERE CITY="Mumbai";

/*USING OPERATORS IN where
1.ARITHMATIC= + - * / %
2.COMPARISION: = != > >= < <=
3.LOGICAL=AND,OR,NOT,IN BETWEEN,ALL,LIKE,ANY
4.BITWISE:&(bitwise AND),|(bitwise OR)
*/
#1
SELECT * FROM student WHERE marks+10>100;
#2
SELECT * FROM student WHERE marks=82;

#AND:CHECKS IF BOTH CONDITIONS ARE TURE OR NOT
SELECT * FROM student WHERE marks=93 AND CITY="Mumbai";

#BETWEEN:SELECTS FOR A GIVEN RANGE
SELECT * FROM student WHERE marks BETWEEN 80 AND 90;

#IN: MATCHES ANY VALUE IN THE LIST
SELECT * FROM student WHERE CITY IN ("Delhi","Mumbai");

#NOT:TO NEGATE THE GIVEN CONDITION
SELECT * FROM student WHERE CITY NOT IN ("Delhi","Mumbai");
/*CLASUSESS*/

#LIMIT CLAUSE :SETS AN UPPER LIMIT ON NUMBER OF ROWS TO BE FOUND
SELECT * FROM student LIMIT 3;

#ORDERBY CLAUSE:TO SORT IN ASCENDING(ASC) OR DESCENDING ORDER(DESC)
SELECT * FROM student ORDER BY CITY ASC;
SELECT * FROM student ORDER BY rollno DESC;


#REAL LIFE IMPLEMENTATION OF THIS:TO FIND TOP3 STUDENTS
SELECT * FROM student ORDER BY marks DESC LIMIT 3;


/*
AGGGREGATE FUNCTIONS:PERFORM CALCULATIONS ON A SET OF VALUES
AND RETURN A SINGLE VALUE
COUNT()
MAX()
MIN()
SUM()
AVG()
*/

SELECT marks FROM student;
SELECT MAX(marks) FROM student;
SELECT MIN(marks) FROM student;
SELECT AVG(marks) FROM student;
SELECT COUNT(name) FROM student;


/*GROUP BY CLAUSE
FROUP ROWS THAT HAVE THE SAME VALUES INTO SUMMARY ROWS.
IT COLLECTS DATA FROM MULTIPLE RECORDS AND GROUPS THE RESLUT BY 
ONE OR MORE COLUMNS
*/

SELECT city,count(name)
FROM STUDENT
group BY CITY;