use manjushree_learns;

SELECT * FROM student;

## counts the total number of records
SELECT COUNT(*) FROM student;

## finds the record with the maximum value
SELECT MAX(marks) FROM student;

## finds the record with the minimum value
SELECT MIN(marks) FROM student;

## finds the sum of the values in the column
SELECT SUM(marks) FROM student;

## finds the average of the values in the column
SELECT AVG(marks) FROM student;

## GROUP BY collects data from multiple records and groups the result by one or more column
SELECT city, count(name) FROM student GROUP BY city;

## GROUP BY multiple attributes
SELECT city, name, count(name) FROM student GROUP BY city, name;

## PRACTICE QUESTION

SELECT city, avg(marks) FROM student GROUP BY city ORDER BY avg(marks) asc;

SELECT mode, count(customer) FROM customer GROUP BY mode;

SELECT grade, count(name) FROM student GROUP BY grade ORDER BY grade;

## end

## Having Clause used for applying conditions to desired rows
SELECT count(name), city FROM student GROUP BY city HAVING max(marks) > 90;

## General Order of execution

SELECT city FROM student WHERE grade = "C" GROUP BY city HAVING MAX(marks) >= 50 ORDER BY city DESC;


