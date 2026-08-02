use parks_and_recreation;

SELECT gender, avg(age) FROM employee_demographics GROUP BY gender;

SELECT occupation, avg(salary) FROM parks_and_recreation.employee_salary GROUP BY occupation;

SELECT gender, max(age) FROM parks_and_recreation.employee_demographics GROUP BY gender;

SELECT * FROM parks_and_recreation.employee_demographics order by gender DESC;

SELECT * FROM parks_and_recreation.employee_salary order by salary ASC;

SELECT * FROM parks_and_recreation.employee_demographics order by gender, age;

SELECT * FROM parks_and_recreation.employee_demographics order by 5, 4;