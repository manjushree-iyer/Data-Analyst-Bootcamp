# Day 2 - Filtering, Grouping & Sorting Data

## 1. WHERE

Filters rows based on a condition.

**Syntax**
```sql
SELECT * FROM table_name
WHERE condition;
```

### Examples

```sql
SELECT * FROM employee_demographics
WHERE first_name = "Leslie";
```

```sql
SELECT * FROM employee_salary
WHERE salary > 50000;
```

```sql
SELECT * FROM employee_demographics
WHERE gender != "Female";
```

```sql
SELECT * FROM employee_demographics
WHERE birth_date > "1985-01-01";
```

### Comparison Operators

- `=` Equal to
- `!=` Not equal to
- `>` Greater than
- `<` Less than
- `>=` Greater than or equal to
- `<=` Less than or equal to

---

## 2. AND & OR

Used to combine multiple conditions.

### AND

Returns rows only if **both** conditions are true.

```sql
SELECT * FROM employee_demographics
WHERE birth_date > "1985-01-01"
AND gender = "Male";
```

### OR

Returns rows if **at least one** condition is true.

```sql
SELECT * FROM employee_demographics
WHERE birth_date > "1985-01-01"
OR gender = "Male";
```

### Parentheses

Used to control the order of conditions.

```sql
SELECT *
FROM employee_demographics
WHERE (first_name = "Leslie" AND age = 44)
OR age > 55;
```

---

## 3. LIKE

Used for pattern matching.

### Wildcards

- `%` → Any number of characters
- `_` → Exactly one character

### Examples

Starts with "Jer"

```sql
SELECT * FROM employee_demographics
WHERE first_name LIKE 'Jer%';
```

Exactly 5 letters starting with "Jer"

```sql
SELECT * FROM employee_demographics
WHERE first_name LIKE 'Jer__';
```

Contains "nn"

```sql
SELECT * FROM employee_demographics
WHERE first_name LIKE '%nn%';
```

Birth year 1989

```sql
SELECT * FROM employee_demographics
WHERE birth_date LIKE '1989%';
```

Born in July

```sql
SELECT * FROM employee_demographics
WHERE birth_date LIKE '%-07-%';
```

---

## 4. GROUP BY

Groups rows having the same value.

Usually used with aggregate functions.

### Aggregate Functions

- AVG()
- SUM()
- COUNT()
- MAX()
- MIN()

### Examples

```sql
SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender;
```

```sql
SELECT occupation, AVG(salary)
FROM employee_salary
GROUP BY occupation;
```

```sql
SELECT gender, MAX(age)
FROM employee_demographics
GROUP BY gender;
```

**Note:** Every selected column must either be:
- Included in `GROUP BY`, or
- An aggregate function.

---

## 5. ORDER BY

Sorts the result.

### ASC (Default)

```sql
SELECT * FROM employee_salary
ORDER BY salary ASC;
```

### DESC

```sql
SELECT * FROM employee_demographics
ORDER BY gender DESC;
```

### Multiple Columns

```sql
SELECT *
FROM employee_demographics
ORDER BY gender, age;
```

### Using Column Position

```sql
SELECT *
FROM employee_demographics
ORDER BY 5, 4;
```

(Column 5 first, then Column 4)

---

## 6. HAVING

Filters grouped data.

`WHERE` filters **before** grouping.

`HAVING` filters **after** grouping.

### Example

```sql
SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary) > 75000;
```

Using Alias

```sql
SELECT gender,
AVG(age) AS avg_age
FROM employee_demographics
GROUP BY gender
HAVING avg_age > 30;
```

---

## 7. LIMIT

Limits the number of rows returned.

### Example

```sql
SELECT *
FROM employee_salary
LIMIT 5;
```

Top 5 highest salaries

```sql
SELECT *
FROM employee_salary
ORDER BY salary DESC
LIMIT 5;
```

### OFFSET

Skips rows before returning results.

```sql
SELECT *
FROM employee_salary
ORDER BY salary DESC
LIMIT 5 OFFSET 2;
```

Returns rows 3 to 7 after sorting.

---

# Key Points

- `WHERE` filters rows.
- `AND` requires all conditions to be true.
- `OR` requires at least one condition to be true.
- `LIKE` is used for pattern matching.
- `%` = any number of characters.
- `_` = one character.
- `GROUP BY` groups similar rows.
- Aggregate functions work with grouped data.
- `ORDER BY` sorts results.
- `HAVING` filters groups.
- `LIMIT` restricts the number of rows.
- `OFFSET` skips rows before returning results.

---

# Commands Learned Today

- WHERE
- Comparison Operators
- AND
- OR
- LIKE
- `%`
- `_`
- GROUP BY
- AVG()
- MAX()
- ORDER BY
- ASC
- DESC
- HAVING
- LIMIT
- OFFSET