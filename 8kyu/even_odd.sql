-- https://www.codewars.com/kata/53da3dbb4a5168369a0000fe/train/sql

--Write your SQL statement here--
select

case 
when number%2=0 then 'Even'
else 'Odd'
end as is_even
from numbers
