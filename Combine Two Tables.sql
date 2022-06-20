/*
Table: Person
+-------------+---------+
| Column Name | Type |
+-------------+---------+
Solution
01/02/2020:
176. Second Highest Salary
Description
| PersonId | int |
| FirstName | varchar |
| LastName | varchar |
+-------------+---------+
PersonId is the primary key column for this table.
Table: Address
+-------------+---------+
| Column Name | Type |
+-------------+---------+
| AddressId | int |
| PersonId | int |
| City | varchar |
| State | varchar |
+-------------+---------+
AddressId is the primary key column for this table.
Write a SQL query for a report that provides the following information for each
person in the Person table, regardless if there is an address for each of those
people:
FirstName, LastName, City, State
# Write your MySQL query statement below
*/
select FirstName, LastName, City, State
from Person as p left join Address as a on p.PersonId = a.PersonId;
