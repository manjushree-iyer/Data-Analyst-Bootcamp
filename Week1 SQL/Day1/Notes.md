# Day 1 - SQL Basics

## 1. CREATE DATABASE

Creates a new database.

**Syntax**
```sql
CREATE DATABASE database_name;
```

**Example**
```sql
CREATE DATABASE parks_and_recreation;
```

---

## 2. USE

Selects the database you want to work with.

**Syntax**
```sql
USE database_name;
```

**Example**
```sql
USE parks_and_recreation;
```

---

## 3. SELECT

Used to retrieve data from a table.

### Display all columns

```sql
SELECT * FROM employee_demographics;
```

`*` means **all columns**.

---

### Display specific columns

```sql
SELECT first_name
FROM employee_demographics;
```

```sql
SELECT first_name, last_name, birth_date
FROM employee_demographics;
```

Selecting only the required columns makes queries faster.

---

## 4. Referencing a Table

A table can be referenced in two ways.

### Method 1 (after using the database)

```sql
USE parks_and_recreation;

SELECT *
FROM employee_demographics;
```

### Method 2 (without using the database)

```sql
SELECT *
FROM parks_and_recreation.employee_demographics;
```

Here,

```
parks_and_recreation.employee_demographics
```

means

```
database_name.table_name
```

---

## 5. Arithmetic Operations

SQL can perform mathematical calculations inside a query.

```sql
SELECT
first_name,
last_name,
age,
age + 10
FROM employee_demographics;
```

You can also combine multiple operations.

```sql
SELECT
first_name,
last_name,
age,
(age + 10) * 10 + 10
FROM employee_demographics;
```

---

## 6. PEMDAS

SQL follows the normal order of operations.

1. Parentheses ()
2. Exponents
3. Multiplication
4. Division
5. Addition
6. Subtraction

Using parentheses improves readability and avoids mistakes.

---

## 7. DISTINCT

Returns only unique values by removing duplicates.

```sql
SELECT DISTINCT first_name
FROM employee_demographics;
```

Example:

Without DISTINCT

```
Leslie
Leslie
Tom
Tom
Ron
```

With DISTINCT

```
Leslie
Tom
Ron
```

---

# Key Points

- `*` returns all columns.
- Separate multiple column names using commas.
- SQL can perform arithmetic calculations.
- Parentheses have the highest priority in calculations.
- `DISTINCT` removes duplicate values.
- A table can be referenced as `database_name.table_name`.

---

# Commands Learned Today

- CREATE DATABASE
- USE
- SELECT
- FROM
- DISTINCT
- Arithmetic Operations
- Database.Table notation