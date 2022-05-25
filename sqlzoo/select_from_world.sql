-- select basics

SELECT population FROM world
  WHERE name = 'Germany'

SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Norway','Denmark');

SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000

--- https://sqlzoo.net/wiki/SELECT_from_WORLD_Tutorial
-- 1
SELECT name, continent, population FROM world

-- 2
SELECT name FROM world
WHERE population >= 200000000

-- 3
select name, gdp/population as 'per capita'
from world
where population >= 200000000

-- 4
select name, population/1000000 as population
from world
where continent = 'South America'

-- 5
select name, population
from world
where name in ('France', 'Germany', 'Italy')

-- 6
select name
from world
where name like 'United%'

-- 7 
select name, population, area
from world
where area > 3000000 or population > 250000000

-- 8
select name, population, area
from world
where 
(area > 3000000 and population < 250000000)
or
(area < 3000000 and population > 250000000)

-- 9 doenst allow scientific notation
select 
name, round(population/1000000,2), round(gdp/1000000000, 2)
from world
where continent = 'South America'

-- 10
select name, round(gdp/population,-3)
from world
where gdp >= 1000000000000

-- 11
SELECT name, capital
FROM world
WHERE LEN(name) = LEN(capital)

-- 12 starts with the same letter but different name
SELECT name, capital
FROM world
where
left(name,1) = left(capital,1)
and 
name <> capital

-- 12
SELECT name
FROM world
WHERE 
name NOT LIKE '% %'
and name like '%a%'
and name like '%e%'
and name like '%i%'
and name like '%o%'
and name like '%u%'
