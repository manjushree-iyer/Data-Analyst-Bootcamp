use parks_and_recreation;

SELECT OCCUPATION, AVG(salary) FROM employee_salary WHERE occupation LIKE '%manager%' GROUP BY occupation HAVING AVG(salary) > 75000;

SELECT * FROM employee_salary LIMIT 5;

SELECT * FROM employee_salary ORDER BY salary DESC LIMIT 5;

SELECT * FROM employee_salary ORDER BY salary DESC LIMIT 5 OFFSET 2;

SELECT gender, avg(age) as avg_age FROM employee_demographics GROUP BY gender HAVING avg_age > 30;
