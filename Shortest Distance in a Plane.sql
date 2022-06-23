/*
Table point_2d holds the coordinates (x,y) of some unique points (more than two)
in a plane.
Write a query to find the shortest distance between these points rounded to 2
decimals.
| x | y |
|----|----|

Description
| -1 | -1 |
| 0 | 0 |
| -1 | -2 |
The shortest distance is 1.00 from point (-1,-1) to (-1,2). So the output should
be:
| shortest |
|----------|
| 1.00 |
Note: The longest distance among all the points are less than 10000.
*/

# Write your MySQL query statement below
select round(min(dist), 2) as shortest
from (
select if(a.x = b.x and a.y = b.y, 10000, sqrt(power(a.x - b.x, 2) + power(a.y
- b.y, 2))) as dist
from point_2d as a, point_2d as b
) as d;
