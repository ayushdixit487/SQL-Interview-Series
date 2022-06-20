/*
Write a SQL query to delete all duplicate email entries in a table named Person,
keeping only unique emails based on its smallest Id.
+----+------------------+
| Id | Email |
+----+------------------+
| 1 | john@example.com |
| 2 | bob@example.com |
| 3 | john@example.com |
+----+------------------+
Id is the primary key column for this table.
For example, after running your query, the above Person table should have the
following rows:
+----+------------------+
| Id | Email |
+----+------------------+
| 1 | john@example.com |
| 2 | bob@example.com |
+----+------------------+
Note:
Your output is the whole Person table after executing your sql. Use delete
statement.
*/

# Write your MySQL query statement below
delete p.*
from Person as p, (
select Email, min(Id) as minId
from Person
group by Email
having count(*) > 1
) as q
where p.Email = q.Email and Id > q.minId;
# Write your MySQL query statement below
delete p1
from Person as p1, Person as p2
where p1.Email = p2.Email and p1.Id > p2.Id;
