use parks_and_recreation;

CREATE TEMPORARY TABLE temp_table1
(
first_name varchar(50), last_name varchar(50), favourite_movie varchar(100)
);

SELECT * FROM temp_table1;

INSERT INTO temp_table1 VALUES("Manjushree", "Iyer", "Wake Up Sid");

CREATE TEMPORARY TABLE salary_over_50Ks AS
SELECT * FROM employee_salary WHERE salary > 50000;

SELECT * FROM salary_over_50Ks WHERE salary > 60000;