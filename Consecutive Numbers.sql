/*
Write a SQL query to find all numbers that appear at least three times
consecutively.
+----+-----+
| Id | Num |
+----+-----+
| 1 | 1 |
| 2 | 1 |
| 3 | 1 |
| 4 | 2 |
| 5 | 1 |
Solution
01/21/2020 (MySQL, user defined variables):
181. Employees Earning More Than Their Managers
Description
| 6 | 2 |
| 7 | 2 |
+----+-----+
For example, given the above Logs table, 1 is the only number that appears
consecutively for at least three times.
+-----------------+
| ConsecutiveNums |
+-----------------+
| 1 |
+-----------------+
*/
# Write your MySQL query statement below

select
distinct Num as ConsecutiveNums
from
(
select
Num, @cnt := if(@prev = (@prev := Num), @cnt + 1, 1) as freq
from
Logs, (select @cnt := 0, @prev := (select Num from Logs limit 1)) as c

) as n
where freq > 2;
