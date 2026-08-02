## Interview Questions

Q: What does * mean in SQL?
A: It selects all columns from a table.

Q: Why should we avoid using SELECT *?
A: It retrieves unnecessary columns, increases data transfer and can make queries slower. Selecting only required columns is considered a good practice.

Q: What does DISTINCT do?
A: It removes duplicate rows from the selected column(s).

Q: What is the difference between SELECT * FROM employee_demographics; and SELECT * FROM parks_and_recreation.employee_demographics;
A: The first works after selecting the database using USE. The second directly specifies the database and table, so it works without USE.

Q: What does `WHERE` do?
A: Filters rows by a condition before grouping or aggregation.

Q: How do `AND` and `OR` differ, and how do parentheses affect them?
A: `AND` requires all conditions true, `OR` requires at least one; parentheses change evaluation order.

Q: What are the `%` and `_` wildcards in `LIKE`?
A: `%` matches any number of chars, `_` matches exactly one char.

Q: Is `LIKE` case-sensitive?
A: It depends on the DB collation; many DBs treat `LIKE` as case-insensitive by default, but some (or binary collations) are case-sensitive.

Q: How does `NULL` behave in `WHERE` comparisons?
A: Comparisons with `NULL` return unknown; use `IS NULL` / `IS NOT NULL`.

Q: What must be true about selected columns when using `GROUP BY`?
A: Every non-aggregated selected column must appear in `GROUP BY`.

Q: Give examples of common aggregate functions.
A: `COUNT()`, `SUM()`, `AVG()`, `MIN()`, `MAX()`.

Q: What's the difference between `WHERE` and `HAVING`?
A: `WHERE` filters rows before aggregation; `HAVING` filters groups after aggregation.

Q: Can you use column aliases in `HAVING`?
A: Often yes (depends on DB); when not supported, repeat the aggregate expression.

Q: How does `ORDER BY` work with multiple columns and directions?
A: It sorts by the first column, then ties by the next; each column can be `ASC` or `DESC`.

Q: What does `ORDER BY 5, 4` mean?
A: Sort using the 5th column, then the 4th column from the `SELECT` list.

Q: How do `LIMIT` and `OFFSET` work together?
A: `LIMIT` restricts the number of returned rows; `OFFSET` skips the first N rows before applying `LIMIT`.

Q: When does `LIKE '%pattern'` prevent index usage and why?
A: Leading `%` forces a full scan because the DB can't use a left-anchored index.

Q: How do `DISTINCT` and `COUNT(DISTINCT ...)` behave?
A: `DISTINCT` removes duplicate rows for selected columns; `COUNT(DISTINCT col)` counts unique non-NULL values.

Q: When should you use `IN` vs `EXISTS`?
A: Use `IN` for a small static list or simple subquery; `EXISTS` can be more efficient for correlated subqueries checking existence.