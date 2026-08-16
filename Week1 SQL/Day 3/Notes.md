# Day 3 - String Functions, CASE, Subqueries & Window Functions

## 1. String Functions

String functions are used to manipulate and analyze text values.

---

### LENGTH()

Returns the number of characters in a string.

**Syntax**

```sql
LENGTH(string);
```

**Example**

```sql
SELECT LENGTH('skyfall');
```

---

### UPPER() and LOWER()

Convert text to uppercase or lowercase.

```sql
SELECT UPPER(first_name)
FROM employee_demographics;
```

```sql
SELECT LOWER(first_name)
FROM employee_demographics;
```

---

### TRIM(), LTRIM(), RTRIM()

Remove unwanted spaces.

* `TRIM()` → removes spaces from both sides
* `LTRIM()` → removes spaces from the left
* `RTRIM()` → removes spaces from the right

```sql
SELECT TRIM('   SKY   ');
```

```sql
SELECT LTRIM('   SKY   ');
```

```sql
SELECT RTRIM('   SKY   ');
```

---

## 2. LEFT(), RIGHT() and SUBSTRING()

Used to extract parts of a string.

### LEFT()

Returns characters from the beginning.

```sql
SELECT first_name, LEFT(first_name, 4)
FROM employee_demographics;
```

### RIGHT()

Returns characters from the end.

```sql
SELECT first_name, RIGHT(first_name, 4)
FROM employee_demographics;
```

### SUBSTRING()

Extracts characters starting from a specific position.

**Syntax**

```sql
SUBSTRING(string, start_position, length);
```

```sql
SELECT first_name, SUBSTRING(first_name, 3, 2)
FROM employee_demographics;
```

Starts at position `3` and extracts `2` characters.

---

## 3. REPLACE()

Replaces one piece of text with another.

**Syntax**

```sql
REPLACE(string, old_value, new_value);
```

```sql
SELECT first_name, REPLACE(first_name, 'a', 'z')
FROM employee_demographics;
```

This replaces `a` with `z`.

---

## 4. LOCATE()

Finds the position of one string inside another.

**Syntax**

```sql
LOCATE(search_string, string);
```

```sql
SELECT first_name, LOCATE('An', first_name)
FROM employee_demographics;
```

Returns the position where `An` occurs.

If the text is not found, it returns `0`.

---

## 5. CONCAT()

Combines multiple strings into one.

```sql
SELECT first_name,
       last_name,
       CONCAT(first_name, ' ', last_name) AS Full_Name
FROM employee_demographics;
```

`AS` creates an alias for the resulting column.

---

## 6. CASE

Used to create conditional logic inside SQL.

Similar to `if-elif-else` in programming.

**Syntax**

```sql
CASE
    WHEN condition THEN result
    WHEN condition THEN result
    ELSE result
END
```

### Example

```sql
SELECT first_name,
       age,
       CASE
           WHEN age <= 30 THEN 'Young'
           WHEN age BETWEEN 31 AND 50 THEN 'Old'
           ELSE 'Older'
       END AS Age_Group
FROM employee_demographics;
```

If no condition matches and there is no `ELSE`, SQL returns `NULL`.

### CASE with calculations

```sql
SELECT first_name,
       salary,
       CASE
           WHEN salary < 50000 THEN salary * 1.05
           ELSE salary
       END AS New_Salary
FROM employee_salary;
```

---

## 7. Subqueries

A subquery is a query inside another query.

Used when the result of one query is needed by another query.

### Example

```sql
SELECT *
FROM employee_demographics
WHERE employee_id IN (
    SELECT employee_id
    FROM employee_salary
    WHERE dept_id = 1
);
```

The inner query first finds employee IDs belonging to department 1.

The outer query then returns employees whose IDs match those results.

### Mental Model

```text
Inner Query
     ↓
produces values
     ↓
Outer Query
     ↓
uses those values
```

---

## 8. GROUP BY + Aggregate Functions

Aggregate functions calculate values from groups of rows.

Common aggregate functions:

* `AVG()` → average
* `SUM()` → total
* `COUNT()` → number of rows
* `MAX()` → maximum
* `MIN()` → minimum

Example:

```sql
SELECT gender,
       AVG(age)
FROM employee_demographics
GROUP BY gender;
```

One result is produced for each gender.

---

## 9. Window Functions

Window functions perform calculations across related rows **without collapsing the rows**.

This is the major difference from `GROUP BY`.

### GROUP BY

```text
Many rows
   ↓
GROUP BY
   ↓
One row per group
```

### Window Function

```text
Many rows
   ↓
Window Function
   ↓
All original rows remain
+ calculated value
```

---

## 10. OVER() and PARTITION BY

`OVER()` turns an aggregate into a window function.

`PARTITION BY` divides rows into groups for the calculation.

```sql
SELECT gender,
       AVG(salary) OVER(PARTITION BY gender)
FROM employee_demographics dem
JOIN employee_salary sal
ON dem.employee_id = sal.employee_id;
```

This calculates the average salary separately for each gender while keeping every employee row.

---

## 11. Window Function vs GROUP BY

| GROUP BY             | Window Function                    |
| -------------------- | ---------------------------------- |
| Collapses rows       | Keeps rows                         |
| One result per group | Result added to every relevant row |
| Used for summaries   | Used for analysis/comparisons      |
| `GROUP BY gender`    | `PARTITION BY gender`              |

Example:

```sql
SELECT gender, AVG(salary)
FROM employee_salary
GROUP BY gender;
```

Returns one row per gender.

```sql
SELECT gender,
       AVG(salary) OVER(PARTITION BY gender)
FROM employee_salary;
```

Keeps every employee and shows their gender's average salary.

---

## 12. ROW_NUMBER()

Assigns a unique sequential number to rows within a window.

```sql
SELECT first_name,
       gender,
       salary,
       ROW_NUMBER() OVER(
           PARTITION BY gender
           ORDER BY salary DESC
       ) AS Row_Num
FROM employee_demographics dem
JOIN employee_salary sal
ON dem.employee_id = sal.employee_id;
```

`PARTITION BY gender` → numbering restarts for each gender.

`ORDER BY salary DESC` → highest salary gets number 1.

---

# Key Points

* String functions manipulate text.
* `LENGTH()` counts characters.
* `UPPER()` / `LOWER()` change case.
* `TRIM()` removes spaces from both sides.
* `LEFT()` / `RIGHT()` extract characters.
* `SUBSTRING()` extracts characters from a specific position.
* `REPLACE()` replaces text.
* `LOCATE()` finds the position of text.
* `CONCAT()` combines strings.
* `CASE` creates conditional logic.
* Subqueries are queries inside other queries.
* `GROUP BY` collapses rows into groups.
* Window functions keep the original rows.
* `PARTITION BY` creates groups inside a window function.
* `ROW_NUMBER()` gives sequential numbers to rows.

---

# Commands Learned Today

* LENGTH()
* UPPER()
* LOWER()
* TRIM()
* LTRIM()
* RTRIM()
* LEFT()
* RIGHT()
* SUBSTRING()
* REPLACE()
* LOCATE()
* CONCAT()
* CASE
* IN
* Subqueries
* Aggregate Functions
* Window Functions
* OVER()
* PARTITION BY
* ROW_NUMBER()
