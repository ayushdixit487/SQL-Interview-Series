/*
Table: Products
+---------------+---------+
| Column Name | Type |
+---------------+---------+
| product_id | int |
| new_price | int |
| change_date | date |
+---------------+---------+
(product_id, change_date) is the primary key of this table.
Each row of this table indicates that the price of some product was changed to a
new price at some date.
Write an SQL query to find the prices of all products on 2019-08-16. Assume the
price of all products before any change is 10.
The query result format is in the following example:

Products table:
+------------+-----------+-------------+
| product_id | new_price | change_date |
+------------+-----------+-------------+
| 1 | 20 | 2019-08-14 |
| 2 | 50 | 2019-08-14 |
| 1 | 30 | 2019-08-15 |
| 1 | 35 | 2019-08-16 |
| 2 | 65 | 2019-08-17 |
| 3 | 20 | 2019-08-18 |
+------------+-----------+-------------+
Result table:
+------------+-------+
| product_id | price |
+------------+-------+
| 2 | 50 |
| 1 | 35 |
| 3 | 10 |
+------------+-------+

Description

*/

# Write your MySQL query statement below
select
i.product_id,
max(if(i.product_id not in (select product_id from Products where change_date
<= date '2019-08-16' group by product_id), 10, (select new_price from Products
where product_id = i.product_id and product_id = q.product_id and change_date =
q.max_change_date))) as price
from
(select distinct product_id from Products) as i,
(
select product_id, max(change_date) as max_change_date
from Products
where change_date <= date '2019-08-16'
group by product_id
) as q
group by i.product_id;
