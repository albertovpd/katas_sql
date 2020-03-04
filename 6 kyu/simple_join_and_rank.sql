-- https://www.codewars.com/kata/58094559c47d323ebd000035/train/sql

-- this kata has easy but with tricky stuff. For example,
-- the joins are not done by people.id=sales.id. it's done
-- by people.id=sales.people_id. I mean, don't mess the id's dude, it's obvious

select 
people.id, 
people.name, 
count(sales.sale) as sale_count, 
rank() over (order by count(sales.id) desc) as sale_rank  

from people left join sales on people.id=sales.people_id  

group by people.id