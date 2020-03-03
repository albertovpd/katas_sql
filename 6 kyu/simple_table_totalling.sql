-- https://www.codewars.com/kata/5809575e166583acfa000083/train/sql

-- Create your SELECT statement here
select 
coalesce(nullif(clan, ''), '[no clan specified]') AS clan,
rank() over (order by sum(points) desc) as rank,
sum(points) as total_points,
count(name) as total_people
from people
group by clan
order by total_points desc