## Weather Observation Station 12
SELECT DISTINCT CITY FROM STATION WHERE CITY NOT LIKE 'A%'
  AND CITY NOT LIKE 'E%'
  AND CITY NOT LIKE 'I%'
  AND CITY NOT LIKE 'O%'
  AND CITY NOT LIKE 'U%'
  AND CITY NOT LIKE '%A'
  AND CITY NOT LIKE '%E'
  AND CITY NOT LIKE '%I'
  AND CITY NOT LIKE '%O'
  AND CITY NOT LIKE '%U';

## Higher Than 75 Marks
SELECT Name FROM STUDENTS WHERE Marks > 75 ORDER BY RIGHT(Name, 3), ID ASC;

## Employee Names
SELECT name FROM Employee order by name asc;

## Employee Salaries
SELECT name FROM Employee WHERE salary > 2000 and months < 10 order by employee_id asc;