-- https://www.codewars.com/kata/5811597e9d278beb04000038/train/sql

select 
date(created_at) as day,
description,
count(name)

from events 
where name='trained'
group by day, description