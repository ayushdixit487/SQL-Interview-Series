/*
Write a SQL query to get the second highest salary from the Employee table.
+----+--------+
| Id | Salary |
+----+--------+
| 1 | 100 |
| 2 | 200 |
| 3 | 300 |
+----+--------+
Solution
01/13/2020:
177. Nth Highest Salary
Description
For example, given the above Employee table, the query should return 200 as the
second highest salary. If there is no second highest salary, then the query
should return null.
+---------------------+
| SecondHighestSalary |
+---------------------+
| 200 |
+---------------------+

*/

# Write your MySQL query statement below
select ifnull((select distinct Salary
from Employee order by Salary desc
limit 1 offset 1),null)
