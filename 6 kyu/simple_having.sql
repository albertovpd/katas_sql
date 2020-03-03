-- https://www.codewars.com/kata/sql-basics-simple-having/train/sql

-- Create your SELECT statement here

select age, 
count(id) as total_people 
from people
group by age
having count(id) >= 10
