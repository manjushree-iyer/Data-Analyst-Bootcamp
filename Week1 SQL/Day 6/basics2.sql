use manjushree_learns;

## Create a database only if it doesn't exist already
CREATE DATABASE IF NOT EXISTS college;

## Drop a database if it exists
DROP DATABASE college;

## Show all the existing Databases
SHOW DATABASES;

## Show all the tables 
SHOW TABLES;

## Drop a table
DROP TABLE college;

## Practice Question 1 

CREATE DATABASE employee_info;
use employee_info;
CREATE TABLE employee(Id INT PRIMARY KEY, Name VARCHAR(20), Salary INT);
INSERT INTO employee VALUES(1, "Adam", 25000);
INSERT INTO employee VALUES(2, "Bob", 30000);
INSERT INTO employee VALUES(3, "Casey", 40000);
SELECT * FROM employee;