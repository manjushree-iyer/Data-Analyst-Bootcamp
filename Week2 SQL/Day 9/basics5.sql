use manjushree_learns;

## Update Query
UPDATE student SET grade = "O" where grade = "A";

## Delete Query
DELETE FROM student WHERE rolllno = 6;

SELECT * FROM student;

## Primary and Foreign Key Implementation

## Primary Table - Parent Table
CREATE TABLE dept (
id INT PRIMARY KEY,
name VARCHAR(50)
);

## Child Table
CREATE TABLE teacher (
id INT PRIMARY KEY,
name VARCHAR(50),
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES dept(id)
ON UPDATE CASCADE
ON DELETE CASCADE
);

INSERT INTO dept VALUES 
(101, "english"),
(102, "IT");

INSERT INTO teacher VALUES
(1, "Adam", 101),
(2, "Eve", 102);

SELECT * FROM dept;

SELECT * FROM teacher;

UPDATE dept SET id = 103 WHERE id = 102;

## Alter Query
ALTER TABLE student ADD COLUMN age INT;
SELECT * FROM students;

ALTER TABLE student DROP COLUMN age;

ALTER TABLE student RENAME students;

ALTER TABLE students CHANGE COLUMN rolllno rollno INT;

ALTER TABLE students MODIFY marks VARCHAR(2);

ALTER TABLE students ADD COLUMN age INT NOT NULL DEFAULT 20;















