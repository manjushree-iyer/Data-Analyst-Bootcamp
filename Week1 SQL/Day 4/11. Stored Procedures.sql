use parks_and_recreation;

CREATE PROCEDURE large_salaries()
SELECT * FROM employee_salary WHERE salary >= 50000;

CALL large_salaries();


CREATE PROCEDURE large_salaries2()
SELECT * FROM employee_salary WHERE salary >= 50000;
SELECT * FROM employee_salary WHERE salary >= 10000; 

CALL large_salaries2();

DELIMITER $$
CREATE PROCEDURE large_salaries4()
BEGIN
	SELECT * FROM employee_salary WHERE salary >= 50000;
	SELECT * FROM employee_salary WHERE salary >= 10000; 
END $$
DELIMITER $$;

CALL large_salaries4();


DELIMITER $$
CREATE PROCEDURE large_salaries6(input INT)
BEGIN
	SELECT salary FROM employee_salary
    WHERE employee_id = input;
END $$
DELIMITER $$;

CALL large_salaries6(1);