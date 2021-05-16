-- https://www.codewars.com/kata/5812a2a2492760dfca000450/train/sql

-- Create your SELECT statement here
with RECURSIVE employee_levels as (
select
  1 as level,
  id,
  first_name,
  last_name,
  manager_id
from
  employees
  where manager_id is null

union all
  select employee_levels.level + 1 as level,
  employees.id,
  employees.first_name,
  employees.last_name,
  employees.manager_id
  from employees
inner join
  employee_levels  
on 
employees.manager_id=employee_levels.id)

select * from employee_levels