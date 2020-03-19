-- https://www.codewars.com/kata/580918e24a85b05ad000010c/discuss/sql

-- Create your SELECT statement here
select 
people.id, people.name,
count(toys.id) as toy_count
from people 
left join toys 
on 
people.id=toys.people_id
group by
people.id