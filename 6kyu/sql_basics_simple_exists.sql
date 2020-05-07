-- https://www.codewars.com/kata/58113a64e10b53ec36000293/solutions/sql

-- Create your SELECT statement here
select
id, name
FROM 
departments
where exists (
select 
price 
FROM 
sales 
where department_id = departments.id and price > 98
)