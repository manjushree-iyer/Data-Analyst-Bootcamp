SELECT * FROM parks_and_recreation.employee_demographics WHERE employee_id IN (SELECT employee_id FROM parks_and_recreation.employee_salary WHERE dept_id = 1);

SELECT first_name, salary, AVG(salary) FROM parks_and_recreation.employee_salary GROUP BY first_name, salary;

SELECT gender, AVG('MAX(age)') FROM (SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age) FROM parks_and_recreation.employee_demographics GROUP BY gender) AS Agg_Table group by gender;