-- List each country name where the population is larger than that of 'Russia'. 
SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')

--2 Show the countries in Europe with a per capita GDP greater than 'United Kingdom'.


 SELECT name
FROM world 
WHERE 
continent = 'Europe' 
AND 
gdp/population > (
SELECT gdp/population FROM world WHERE name =  'United Kingdom'
);



--3 List the name and continent of countries in the continents containing either Argentina or Australia. Order by name of the country
select
name, continent
from world
where 
continent 
in (
select continent 
from world
where 
name in ('Australia','Argentina')
)
order by
name;

--4 Which country has a population that is more than Canada but less than Poland? 
--Show the name and the population.
select 
name
from world
where
population > 
(
select
population
from world
where population = 'Canada'
)
and
population <
(
select
population
from world
where population = 'Poland'
)

--5 Show the name and the population of each country in Europe. 
--Show the population as a percentage of the population of Germany.
select
name, 
concat(round(100*population/ (select population from world where name='Germany'),0),'%') as percentage
from world  
where
continent = 'Europe';

--6 Which countries have a GDP greater than every country in Europe? 
--[Give the name only.] (Some countries may have NULL gdp values) 
select 
name
from world
where gdp > all(select gdp from world where continent = 'Europe' and gdp>0)
-- using ALL + column you must use the column > 0 at the end
-- it also could have been done using min of every country in europe  

  
--7 Find the largest country (by area) in each continent, show the continent, the name and the area:  


--8 List each continent and the name of the country that comes first alphabetically.
