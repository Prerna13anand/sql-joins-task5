# sql-joins-task5
SQL Developer Internship - Task 5: SQL Joins
This repository contains my submission for the fifth SQL task, which focuses on combining data from multiple tables using different types of JOIN clauses.

Project Summary
The SQL script in this repository performs two main functions:

Sets up the database: It creates and populates a set of related tables: Customers, Orders, and Shippers. The sample data includes customers who have placed orders and one customer who has not, in order to clearly demonstrate the behavior of different joins.

Demonstrates Joins: The script then runs a series of queries using INNER JOIN, LEFT JOIN, and simulations of RIGHT JOIN and FULL OUTER JOIN (as these are not natively supported in SQLite). It also includes an example of joining three tables together.

The script was tested using DB Fiddle with SQLite.

Interview Questions & Answers
1. Difference between INNER and LEFT JOIN?
An INNER JOIN returns only the rows where the join condition is met in both tables. A LEFT JOIN returns all rows from the left table, and the matched rows from the right table. If there is no match, the columns from the right table will contain NULL.

2. What is a FULL OUTER JOIN?
A FULL OUTER JOIN combines the results of both a LEFT JOIN and a RIGHT JOIN. It returns all rows from both tables, matching them where possible. If there is no match for a row in one of the tables, its columns will be NULL.

3. Can joins be nested?
Yes, you can nest joins. This is a common way to join multiple tables, where the result of one join is then joined to another table.

4. How to join more than 2 tables?
You can chain JOIN clauses one after another. For example: FROM TableA JOIN TableB ON ... JOIN TableC ON ....

5. What is a cross join?
A CROSS JOIN returns the Cartesian product of the two tables, meaning it pairs every row from the first table with every row from the second table. It does not use an ON clause.

6. What is a natural join?
A NATURAL JOIN is a type of join that automatically joins tables based on columns that have the same name and datatype. It is generally avoided in production code because it can produce unexpected results if table schemas change.

7. Can you join tables without foreign key?
Yes. A JOIN's ON clause can link any two columns that have matching data, even if they are not defined with a formal foreign key constraint. However, using foreign keys is best practice for data integrity.

8. What is a self-join?
A self-join is a regular join where a table is joined with itself. This is useful for querying hierarchical data, such as finding an employee's manager within the same Employees table.

9. What causes Cartesian product?
A Cartesian product (where every row from one table is combined with every row from another) is caused by a CROSS JOIN or an INNER JOIN with a missing or incorrect ON condition.

10. How to optimize joins?
Joins can be optimized by ensuring that the columns used in the ON clause are indexed. It's also important to select only the necessary columns and to filter data as early as possible using WHERE clauses to reduce the size of the dataset being joined.
