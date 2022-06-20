/*
The Employee table holds all employees including their managers. Every employee
has an Id, and there is also a column for the manager Id.
+----+-------+--------+-----------+
| Id | Name | Salary | ManagerId |
+----+-------+--------+-----------+
| 1 | Joe | 70000 | 3 |
| 2 | Henry | 80000 | 4 |
| 3 | Sam | 60000 | NULL |
| 4 | Max | 90000 | NULL |
+----+-------+--------+-----------+
Solution
01/18/2020:
182. Duplicate Emails
Description
Solution
01/18/2020:
Given the Employee table, write a SQL query that finds out employees who earn
more than their managers. For the above table, Joe is the only employee who
earns more than his manager.
+----------+
| Employee |
+----------+
| Joe |
+----------+

*/
# Write your MySQL query statement below
select e.Name as Employee
from Employee as e inner join Employee as m on e.ManagerId = m.id
where e.Salary > m.Salary;
