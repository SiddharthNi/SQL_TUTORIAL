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
