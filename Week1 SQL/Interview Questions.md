## Interview Nuggets

Q. What does * mean in SQL?
A. It selects all columns from a table.

Q. Why should we avoid using SELECT *?
A. It retrieves unnecessary columns, increases data transfer and can make queries slower. Selecting only required columns is considered a good practice.

Q. What does DISTINCT do?
A. It removes duplicate rows from the selected column(s).

Q. What is the difference between

SELECT * FROM employee_demographics;

and

SELECT * FROM parks_and_recreation.employee_demographics;

A. The first works after selecting the database using USE. The second directly specifies the database and table, so it works without USE.