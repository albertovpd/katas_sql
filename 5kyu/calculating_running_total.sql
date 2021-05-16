-- https://www.codewars.com/kata/589cf45835f99b2909000115/train/sql

-- Replace with your SQL query
select 
date(created_at) as date, 
count(title) as count,
sum(count(title)) over(order by date(created_at))::int as total
from posts
group by date
