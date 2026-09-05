Database = Collection of Data in a format that can be easily accessed digitally

Datbase Management System is the software application that is used to manage our Database

                                   |---------------------------|
                                   | user -> DBMS -> Database  |
                                   |---------------------------|
Types of Databse: Relational & Non Relational

Relational Database:
Data that is stored in tables for example: MySQl, ORACLE, SQL Server, PostgreSQL etc

Non Relational Database:
Data is not stored in Tables for example: MongoDB

What is SQL?
Structured Query Language is the progreamming language that is used to interact with relational databases. Its used to perform CRUD operations - Create, Read, Update, Delete.

SQL DataTypes?

1. CHAR : stores characters of fixed length
2. VARCHAR: stores characters up to the given length
3. BLOB: can store binary large object
4. INT: integer (-2 , ... ,647)
5. TINYINT: integer (-128, ..., 127)
6. BIGINT: integer (-9, ...., 807)
7. BIT: can store X bit values. x can range from 1 to 64
8. FLOAT: Decimal Number with precision to 23 digits
9. DOUBLE: Decimal Number with -24 to 53 digits
10. BOOLEAN: Boolean Values 0 or 1
11. DATE: Date in the format of YYYY-MM-DD
12. YEAR: Year in 4 digits format

Types of SQL Commands:

1. DDL(Data Definition Language): create, alter, rename, truncate, deop
2. DQL(Data Query Language): select
3. DML(Data Manipulation Language): insert, update, delete
4. DCL(Data Control Language): grant and revoke
5. TCL(Transaction Control Language): start, commit, rollback
   
Keys:

1. Primary Key: Uniquely identifies each row
2. Foreign Key: Refers to the Primary Key of another Table

Constraints:
1. NOT NULL: columns cannot have a null vakue
2. UNIQUE: all values in the column are different
3. PRIMARY KEY: makes a column unique and cannnot have duplicate values
4. FOREIGN KEY: prevents actions that would destroy links between tables
5. DEFAULT: sets the default value of that column
6. CHECK: it can limit the values allowed in a column

Operators:
1. Arithmetic: +, -, *, /, %
2. Comparison: =, !=, >, <, >=, <=
3. Logical: AND, OR, NOT, IN, BEWEEN, ALL, LIKE, ANY
4. Bitwise: BITWISE AND &, BITWISE OR |

Aggregate Functions:
1. COUNT(): counts the total number of records
2. MAX(): finds the record with the maximum value
3. MIN(): finds the record with the minimum value
4. SUM(): finds the sum of the values in the column
5. AVG(): finds the average of the values in the column

GROUP BY Clause:
Groups rows that have the same value into summary rows. It collects data from multiple records and groups the result by one or more column

SELECT city, count(name) FROM student GROUP BY city;

HAVING Clause:
Applies condition to certain desired rows. Its generally used when we want to apply any condition after grouping.

SELECT count(name), city FROM student GROUP BY city HAVING max(marks) > 90;

GENERAL ORDER OF EXECUTION:

1. SELECT
2. FROM
3. WHERE
4. GROUP BY
5. HAVING
6. ORDER BY