-- https://www.codewars.com/kata/594257d4db68b6e99200002c/train/sql

/*  SQL  */
select
project, 
regexp_replace(address, '\d', '', 'g') AS letters,
regexp_replace(address, '\D', '', 'g') AS numbers
--The g modifier is used to perform a global match (find all matches rather than stopping after the first match).
from repositories