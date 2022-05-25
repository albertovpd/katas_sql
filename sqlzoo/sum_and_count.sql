-- 1
SELECT SUM(population)
FROM world

-- 2
select distinct(continent)
from world

-- 3
select sum(gdp)
from world
where continent ='Africa'

-- 4
select count(name)
from world
where area >= 1e6

-- 5
select sum(population)
from world
where name in ('Estonia', 'Latvia', 'Lithuania')

-- 6
select continent, count(name)
from world
group by continent

-- For each continent show the continent and number of countries with populations of at least 10 million.
select continent, count(name)
from world
where population >= 10e6
group by continent

-- List the continents that have a total population of at least 100 million.
select continent
from world
group by continent
having sum(population) >= 100e6