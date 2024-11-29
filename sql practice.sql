CREATE DATABASE cllg
CREATE DATABASE IF NOT EXISTS cllg;
DROP DATABASE IF EXISTS company;
USE cllg;
CREATE TABLE student (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  age INT NOT NULL
);
INSERT INTO student VALUES(1,"SIDDHARTH",23);
INSERT INTO student VALUES(2,"sunny",22);
SELECT * FROM student;
SHOW DATABASES;
INSERT INTO student 
(id, name, age)
VALUES 
(6,"krutik", 24),  
(7,"earth", 23);
SELECT* FROM student

CREATE DATABASE xyc
USE xyc;
CREATE TABLE employee(
   id INT  PRIMARY KEY,
   name VARCHAR(50),
   salary INT  NOT NULL);
   
INSERT INTO employee VALUES(1,"adam",25000);
INSERT INTO employee VALUES(2,"bob",30000);
INSERT INTO employee VALUES(3, "casey",40000);
SELECT * FROM employee;

CREATE TABLE temp1 (
    id INT,
    name VARCHAR(50),
    age INT,
    city VARCHAR(20),
    PRIMARY KEY (id,name)
    );
    
CREATE TABLE majdur (
   id INT,
   salary INT DEFAULT 25000);
   
   INSERT INTO majdur (id) VALUES (101);
   select * from majdur
   
CREATE DATABASE mit;
USE mit;

CREATE TABLE student(
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade varchar(1),
city VARCHAR(20)
);

INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(101, "anil", 78, "c", "pune"), 
(102, "bhumika", 93, "A", "mumbai"), 
(103, "chetan", 85, "B", "mumbai"), 
(104, "dhruv", 96, "A", "delhi"), 
(105, "emanuel", 12, "F", "delhi"), 
(106, "farah", 82, "B", "delhi");
SELECT city FROM student;
SELECT DISTINCT city FROM student;
SELECT * FROM student WHERE marks> 80;
SELECT * FROM student WHERE rollno= 101;
SELECT * 
FROM student 
WHERE marks> 80 AND city="mumbai";
SELECT *
FROM student
WHERE marks+10 > 100;

SELECT *
FROM student
WHERE marks BETWEEN 10 AND 100;

SELECT *
FROM student
WHERE city IN ("delhi", "mumbai");

SELECT *
FROM student
WHERE city NOT IN ("delhi", "mumbai");

SELECT *
FROM student
WHERE marks>90 OR city = "mumbai";

SELECT *
FROM student
WHERE marks>90 LIMIT 2;

SELECT *
FROM student
ORDER BY city ASC;

SELECT * 
FROM student
ORDER BY marks DESC 
LIMIT 3;

SELECT MAX(marks)
FROM student;

SELECT MIN(marks)
from student;

SELECT COUNT(rollno)
from student; 

SELECT SUM(marks)
from student;

SELECT AVG(marks)
from student; 

use mit;
SELECT city
FROM student
GROUP BY city;

SELECT city,AVG(marks)
FROM student
GROUP BY city;

SELECT grade ,COUNT(rollno)
FROM student
GROUP BY grade
ORDER BY grade;

USE mit;
SELECT name, COUNT(rollno)
FROM student
GROUP BY name
HAVING MAX(marks)>93;

SET SQL_SAFE_UPDATES=0;
UPDATE student 
SET grade = "0"
WHERE grade = "A";

UPDATE student
SET marks= 83
WHERE rollno= 105;

SELECT * FROM student;

UPDATE student 
SET grade= "B"
WHERE grade= "F";

UPDATE student
SET grade="A"
WHERE grade="0";

UPDATE student 
SET marks=marks+1;

SELECT* FROM student;

UPDATE student
SET marks =12
WHERE rollno =105;

DELETE FROM student
WHERE MRKS>30;

USE mit;
ALTER TABLE student
MODIFY COLUMN age VARCHAR(2);

INSERT INTO student
(rollno,name,marks,grade,city)
VALUES
(107,"gargi", 68,"F","satara");

ALTER TABLE student
DROP COLUMN grade;

SELECT * FROM student;

TRUNCATE TABLE student; 

ALTER TABLE student
CHANGE name full_name VARCHAR(50);

CREATE TABLE students(
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade varchar(1),
city VARCHAR(20)
);

INSERT INTO students
(rollno,name, marks, grade, city)
VALUES
(101, "anil", 78, "c", "pune"), 
(102, "bhumika", 93, "A", "mumbai"), 
(103, "chetan", 85, "B", "mumbai"), 
(104, "dhruv", 96, "A", "delhi"), 
(105, "emanuel", 12, "F", "delhi"), 
(106, "farah", 82, "B", "delhi");


DELETE FROM student
WHERE marks<80;

SELECT*FROM student;

ALTER TABLE students
DROP COLUMN  grade;

CREATE TABLE stu(
  id INT PRIMARY KEY,
  name VARCHAR(50)
);

INSERT INTO stu (id,name)
VALUES
(101,"adam"),
(102,"bob"),
(103,"casey");

CREATE TABLE course(
   id INT PRIMARY KEY,
   course VARCHAR(50)
);

INSERT INTO course (id, course)
VALUES
(102, "english"),
(105, "math"),
(103, "science"),
(107, "computer science");
   
SELECT * FROM stu;
SELECT * FROM course;

SELECT * FROM stu
INNER JOIN course
ON stu.id=course.id;

SELECT * FROM stu
LEFT JOIN course
ON stu.id=course.id;

SELECT * FROM stu
RIGHT JOIN course
ON stu.id=course.id;

SELECT * FROM stu
LEFT JOIN course
ON stu.id=course.id
UNION
SELECT * FROM stu
RIGHT JOIN course
ON stu.id=course.id;

USE mit;
SELECT * FROM stu
LEFT JOIN course
ON stu.id= course.id
WHERE course.id IS NULL;

SELECT * FROM stu
RIGHT JOIN course
ON stu.id= course.id
WHERE stu.id IS NULL;