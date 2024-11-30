# SQL_TUTORIAL
This Repository for to know the SQL (structured query language). also  for revising the concept of SQL.
# SQL

## Database :- It is the collection of data that format we can easily acessed.

## DBMS(Data base management system) :- It is the software application it is used for manage database.

## Types of Databases :-
   ### Relational Database :- 
   SQL, MY SQL, ORACLE DB, Postgre SQL, etc. is are the Types of Relational database. 

We use SQL to  work with relational DBMS.

Data stored in a tables.

  ### Non Relational Database :-
  Mango DB

we use NO SQL.

Data is not Stored in tables.

## What is SQL :-
SQL is the structured query  language which can interact with relational Databases.

It's Perform "CRUD" operation.

Create

Read

Update

Delete


## Creation  Of Database 

CREATE DATABASE db_name;

USE db_name;

## Creation of first table

USE db_name;

CREATE TABLE table_name(

   column_name1 datatype constraint,

   column_name2 datatype constraint,

   column_name3 datatype constraint
);


## SQL Datatypes
The value can be stored in column.

CHAR 

VARCHAR 

BLOB

INT

TINYINT

BIGINT

BIT

FLOAT

DOUBLE

BOOLEAN

DATE

YEAR

## Types of SQL commands

DDL(Data Defination Language) :- CREATE, READ , ALTER , DROP , TRUNCATE

DQL(Data Query Language) :- SELECT

DMl(Data Manipulation Language) :- INSERT, UPDATE, DELETE, SELECT

DCL(Data Control Language) :- grant, and revoke permission to users

TCL(Transaction Control Language) :- SET TRANSCATION, COMMIT, ROLLBACK

## Database related Queries

CREATE DATABASE db_name;

CREATE DATABASE IF NOT EXISTS db_name;

DROP DATABASE db_name;

DROP DATABASE IF EXISTS db_name;

SHOW DATABASES;

SHOW TABLES;


## Table related Queries

CREATE TABLE table_name (

column_name1 datatype constraint,

column_name2 datatype constraint,

);

### Select & View ALL columns

SELECT * FROM table_name;

### Inserting VALUES

INSERT INTO table_name

(colname1, colname2);

VALUES

(col1_v1, col2_v1),

(col1_v2, col2_v2);

## Keys
### Primary Key

It is a column (or set of columns) in a table that uniquely identifies each row. (a unique id)

There is only 1 PK & it should be NOT null.

### foreign key

A foreign key is a column (or set of columns) in a table that refers to the primary key in another table.

FKs can have duplicate & null values.

## constraint
Constraint is the specify the rules for data in table.

NOT NULL:

columns cannot have a null value

UNIQUE:

all values in column are different

PRIMARY KEY:

makes a column unique & not null but used only for one

FOREIGN KEY :

prevent actions that would destroy links between tables

DEFAULT:

 sets the default value of a column

CHECK:

it can limit the values allowed in a column

## Select in Detail

used to select any data from the database

Basic Syntax

SELECT col1, col2 FROM table_name;

To Select ALL

SELECT * FROM table_name;

## Where Clause

To define some conditions

SELECT col1, col2 FROM table_name

WHERE conditions;

### Using Operators in WHERE

Arithmetic Operators : +(addition) , -(subtraction), *(multiplication), /(division), %(modulus)

Comparison Operators : = (equal to), != (not equal to), > , >=, <, <=

Logical Operators : AND, OR , NOT, IN, BETWEEN, ALL, LIKE, ANY

Bitwise Operators : & (Bitwise AND), | (Bitwise OR)

## Limit Clause

Sets an upper limit on number of (tuples)rows to be returned

SELECT col1, col2 FROM table_name

LIMIT number;

## Order By Clause

To sort in ascending (ASC) or descending order (DESC)


SELECT col1, col2 FROM table_name

ORDER BY col_name(s) ASC;

## Aggregate Functions

Aggregare functions perform a calculation on a set of values, and return a single value.

COUNT( )

MAX( )

MIN( )

SUM( )

AVG( )

## Group By Clause

Groups rows that have the same values into summary rows.

It collects data from multiple records and groups the result by one or more 
column.

Generally we use group by with some aggregation function.

## Having Clause

Similar to Where i.e. applies some condition on rows.

Used when we want to apply any condition after grouping.

## General Order

SELECT column(s)

FROM table_name

WHERE condition

GROUP BY column(s)

HAVING condition

ORDER BY column(s) ASC;

## Having Clause

Similar to Where i.e. applies some condition on rows.

Used when we want to apply any condition after grouping.

## Table related Queries

Update (to update existing rows)



UPDATE table_name

SET col1 = val1, col2 = val2

WHERE condition;

### Delete (to delete existing rows)

DELETE FROM table_name

WHERE condition;

## Cascading for FK
On Delete Cascade

When we create a foreign key using this option, it deletes the referencing rows in the child table
when the referenced row is deleted in the parent table which has a primary key.

On Update Cascade

When we create a foreign key using UPDATE CASCADE the referencing rows are updated in the child
table when the referenced row is updated in the parent table which has a primary key.

## Alter (to change the schema)

### ADD COLUMN

ALTER TABLE table_name

ADD COLUMN column_name datatype constraint;

### RENAME TABLE

ALTER TABLE table_name

RENAME TO new_table_name;

### DROP COLUMN

ALTER TABLE table_name

DROP COLUMN column_name;

### CHANGE COLUMN

ALTER TABLE table_name

CHANGE COLUMN old_name new_name new_datatype new_constraint;

### MODIFY Column (modify datatype/ constraint)

ALTER TABLE table_name

MODIFY col_name new_datatype new_constraint;

### Truncate (to delete table's data)

TRUNCATE TABLE table_name ;

### Joins in SQL

Join is used to combine rows from two or more tables, based on a related column between them.

### Inner Join

Returns records that have matching values in both tables

Syntax

SELECT column(s)

FROM tableA

INNER JOIN tableB

ON tableA.col_name = tableB.col_name;

### Left Join

Returns all records from the left table, and the matched records from
the right table

Syntax

SELECT column(s)

FROM tableA

LEFT JOIN tableB

ON tableA.col_name = tableB.col_name;

### Right Join

Returns all records from the right table, and the matched records
from the left table

Syntax

SELECT column(s)

FROM tableA

RIGHT JOIN tableB

ON tableA.col_name = tableB.col_name;

### Full Join

Returns all records when there is a match in either left or right table

LEFT JOIN

UNION

RIGHT JOIN

### SQL syntax 

SELECT column(s)

FROM tableA

LEFT JOIN tableB

ON tableA.column_name=tableB.column_name

UNION

SELECT column(s)

FROM tableA

RIGHT JOIN tableB

ON tableA.column_name=tableB.column_name

### Self Join

It is a regular join but the table is joined with itself.

### Syntax

SELECT column(s)

FROM table as a

JOIN table as b

O﻿N a.col_name = b.col_name;

### Union

It is used to combine the result-set of two or more SELECT statements.

Gives UNIQUE records.

Syntax:

SELECT column(s) FROM tableA

UNION

SELECT column(s) FROM tableB

### MySQL Views

A view is a virtual table based on the result-set of an SQL statement.

### syntax

CREATE VIEW view1 AS

SELECT rollno, name FROM student;

SELECT * FROM view1;

*A view always shows up-to-date data. The
database engine recreates the view, every time a
user queries it.


