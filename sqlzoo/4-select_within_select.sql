-- List each country name where the population is larger than that of 'Russia'. 
SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')

-- Show the countries in Europe with a per capita GDP greater than 'United Kingdom'.

 SELECT name 
FROM world 
WHERE gdp/population > (SELECT gdp/population FROM world WHERE name = 'United Kingdom');

--List the name and continent of countries in the continents containing either Argentina or Australia. Order by name of the country
select name, continent 
from world 
where continent in (SELECT continent FROM world WHERE name IN ('Argentina', 'Australia')) ORDER BY name;

-- Which country has a population that is more than Canada but less than Poland? 
--Show the name and the population.
select name from world
where
population > (select population from world where name= 'Canada') 
and 
population <(select population from world where name= 'Poland') 

--Show the name and the population of each country in Europe. 
--Show the population as a percentage of the population of Germany.
select 
name, 
concat(round(100*population/(select population from world where name ='Germany'),0),'%') as population
from world
where continent='Europe'

--Which countries have a GDP greater than every country in Europe? 
--[Give the name only.] (Some countries may have NULL gdp values) 
select name
from world
where
gdp > all (select gdp from world where gdp >0 and continent = 'Europe')
-- ====================================> it feels weird to use this gdp>0

--7 Find the largest country (by area) in each continent, show the continent, the name and the area:  
SELECT continent, name, area 
FROM world as x 
WHERE 
area >= ALL(SELECT area FROM world as y WHERE x.continent = y.continent AND y.area>0);

--8 List each continent and the name of the country that comes first alphabetically.
SELECT 
continent, name 
FROM 
world as x 
WHERE name <= ALL(SELECT name FROM world as y WHERE x.continent = y.continent);
-- <= implies taking the first in this case