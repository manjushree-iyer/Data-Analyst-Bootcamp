# create a database
CREATE DATABASE manjushree_learns;

# drop a database
DROP DATABASE manjushree_learns;

# use this database 
use manjushree_learns;

# create table
CREATE TABLE college(
rollno int primary key, name Varchar(20), surname varchar(10), marks float, grade varchar(3)
);

# view the entire table
SELECT * FROM college;

# insert data into the table
INSERT INTO college VALUES (61, "Manjushree", "Iyer", 95, "O");
INSERT INTO college VALUES (62, "Riya", "Singh", 90, "A");
INSERT INTO college VALUES (63, "Siya", "Pillai", 55, "C");
INSERT INTO college VALUES (64, "DIya", "Patil", 75, "B");

