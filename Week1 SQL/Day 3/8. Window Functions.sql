use parks_and_recreation;

SELECT gender, AVG(salary) OVER(PARTITION BY gender) FROM employee_demographics dem JOIN employee_salary sal ON dem.employee_id = sal.employee_id;

SELECT dem.first_name, dem.last_name, gender, AVG(salary) OVER(PARTITION BY gender) FROM employee_demographics dem JOIN employee_salary sal ON dem.employee_id = sal.employee_id;

SELECT dem.first_name, dem.last_name, gender, AVG(salary) AS Avg_salary FROM employee_demographics dem JOIN employee_salary sal ON dem.employee_id = sal.employee_id GROUP BY dem.first_name, dem.last_name, gender;

SELECT dem.first_name, dem.last_name, gender, salary, ROW_NUMBER() OVER(PARTITION BY gender) FROM employee_demographics dem JOIN employee_salary sal ON dem.employee_id = sal.employee_id GROUP BY dem.first_name, dem.last_name, gender;
