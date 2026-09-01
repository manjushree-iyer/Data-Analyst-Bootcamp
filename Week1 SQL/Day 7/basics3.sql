use manjushree_learns;

CREATE TABLE student (
rolllno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(20)
);

INSERT INTO STUDENT (rolllno, name, marks, grade, city) VALUES 
(1, "Manjushree Iyer", 95, "O", "Navi Mumbai"),
(2, "Siya Singh", 86, "A", "Mumbai"),
(3, "Aarush Patil", 65, "C", "Pune"),
(4, "Nikita Sharma", 65, "C", "Banglore"),
(5, "Dhruv Mehta", 65, "C", "Trivandrum"),
(6, "Farah Khan", 65, "C", "Mumbai"),
(7, "Chetan Chendwankar", 65, "C", "Pune");

## select the entire table
SELECT * FROM STUDENT;

## select certain columns
SELECT name, city FROM STUDENT;

## select unique values from a particular column
select DISTINCT CITY FROM STUDENT;

## where clauses
SELECT name, city from STUDENT where grade = "O";
SELECT * FROM STUDENT WHERE city = "Mumbai";

## operators on WHERE clauses

SELECT * FROM STUDENT WHERE marks + 10 >= 100;
SELECT * FROM STUDENT ORDER BY marks ASC;
SELECT * FROM STUDENT ORDER BY marks DESC;
SELECT * FROM STUDENT ORDER BY marks DESC LIMIT 3;
SELECT * FROM STUDENT WHERE city IN ("Mumbai", "Navi Mumbai");
SELECT * FROM STUDENT WHERE city NOT IN ("Mumbai", "Navi Mumbai");
SELECT * FROM STUDENT WHERE marks BETWEEN 80 AND 100;