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


--5 Show the name and the population of each country in Europe. 
--Show the population as a percentage of the population of Germany.


--6 Which countries have a GDP greater than every country in Europe? 
--[Give the name only.] (Some countries may have NULL gdp values) 


--7 Find the largest country (by area) in each continent, show the continent, the name and the area:  


--8 List each continent and the name of the country that comes first alphabetically.
