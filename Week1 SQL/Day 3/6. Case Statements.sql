SELECT first_name, last_name,age, 
CASE WHEN age <= 30 THEN "Young" END FROM parks_and_recreation.employee_demographics;

SELECT first_name, last_name,age, 
CASE
WHEN age <= 30 THEN "Young" 
WHEN age BETWEEN 31 and 50 THEN "Old"
END 
FROM parks_and_recreation.employee_demographics;

SELECT first_name, last_name, salary, 
CASE
WHEN salary < 50000 THEN salary * 1.05
END
FROM parks_and_recreation.employee_salary;