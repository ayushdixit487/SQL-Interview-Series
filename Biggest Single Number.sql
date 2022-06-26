/*
Table my_numbers contains many numbers in column num including duplicated ones.
Can you write a SQL query to find the biggest number, which only appears once.
+---+
|num|
+---+
| 8 |
| 8 |
| 3 |
| 3 |
| 1 |
| 4 |
| 5 |
| 6 |
For the sample data above, your query should return the following result:
+---+

Solution

|num|
+---+
| 6 |
Note:
If there is no such number, just output null.

*/

# Write your MySQL query statement below
select max(num) as num
from (
select num
from my_numbers
group by num
having count(num) = 1
) as n;
