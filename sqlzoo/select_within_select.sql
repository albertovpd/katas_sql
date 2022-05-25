-- 1
SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')

-- 2
select name
from world
where continent = 'Europe'
and 
gdp/population > (
select gdp/population
from world
where name = 'United Kingdom'
)

-- 3 List the name and continent of countries in the continents containing either Argentina or Australia
select name, continent
from world
where continent in 
(select continent 
from world
where name in ('Argentina', 'Australia')
)

-- Which country has a population that is more than United Kingom but less than Germany?
select name, population
from world
where population > (
select population 
from world
where name = 'United Kingdom')
and  population < (
select population 
from world
where name = 'Germany')

-- Show the name and the population of each country in Europe. Show the population as a percentage of the population of Germany.
select 
name, 
concat(
cast(
round(100*population/(select population from world where name = 'Germany'),0) as int), '%') as percentage
from world
where
continent = 'Europe'

-- Which countries have a GDP greater than every country in Europe?
select name
from world
where gdp > all(
select gdp
from world
where continent = 'Europe' 
and gdp>0 -- <= this is necessary using ALL
)

-- Find the largest country (by area) in each continent, show the continent, the name and the area:
SELECT continent, name, area FROM world x
  WHERE area >= ALL
    (SELECT area FROM world y
        WHERE y.continent=x.continent
          AND area>0)

-- List each continent and the name of the country that comes first alphabetically.
SELECT continent, MIN(name) as name
FROM world
GROUP BY continent

-- Find the continents where all countries have a population <= 25000000. Then find the names of the countries associated with these continents. Show name, continent and population.
select name, continent, population
from world x
where 25000000 >= all(
select population from world y 
where x.continent = y.continent
and population >0 )

-- Some countries have populations more than three times that of all of their neighbours (in the same continent). Give the countries and continents.
select name, continent
from world x
where population/3 > all(
select population
from world y
where x.continent = y.continent
and x.name <> y.name
and population > 0)