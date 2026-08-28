use parks_and_recreation;

WITH CTE_Example AS
(
SELECT gender, AVG(salary), MAX(salary) max_sal FROM employee_demographics dem JOIN employee_salary sal ON dem.employee_id = sal.employee_id GROUP BY gender
)
SELECT * FROM CTE_Example;

WITH CTE_Example1 AS
(
    SELECT
        dem.employee_id,
        dem.gender,
        sal.salary
    FROM employee_demographics dem
    JOIN employee_salary sal
        ON dem.employee_id = sal.employee_id
),

CTE_Example2 AS
(
    SELECT
        dem.employee_id,
        dem.gender,
        AVG(sal.salary) OVER(PARTITION BY dem.gender) AS avg_salary,
        MAX(sal.salary) OVER(PARTITION BY dem.gender) AS max_salary,
        MIN(sal.salary) OVER(PARTITION BY dem.gender) AS min_salary,
        COUNT(*) OVER(PARTITION BY dem.gender) AS employee_count
    FROM employee_demographics dem
    JOIN employee_salary sal
        ON dem.employee_id = sal.employee_id
)

SELECT *
FROM CTE_Example1
JOIN CTE_Example2
    ON CTE_Example1.employee_id = CTE_Example2.employee_id;