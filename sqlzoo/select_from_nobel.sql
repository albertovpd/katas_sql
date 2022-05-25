-- 1 
SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950

-- 2
SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'literature'

-- 3
select yr, subject
from nobel
where winner = 'Albert Einstein'

-- 4
select winner
from nobel
where yr>=2000 and subject = 'peace'

-- 5
select yr, subject, winner
from nobel
where
yr between 1980 and 1989
and subject = 'literature'

-- 6
SELECT * FROM nobel
 WHERE winner in 
('Barack Obama', 'Woodrow Wilson', 'Theodore Roosevelt', 'Jimmy Carter')

-- 7
select winner
from nobel
where winner like 'John%'

-- 8
select yr, subject, winner
from nobel
where 
(yr = 1980 and subject = 'physics')
or
(yr = 1984 and subject = 'chemistry')

-- 9
select yr, subject, winner
from nobel
where 
yr = 1980
and
subject not in ('chemistry', 'medicine')

-- 10
select yr, subject, winner
from nobel
where
(subject = 'Medicine' and yr < 1910)
or
(subject = 'Literature' and yr >= 2004)

-- 11
select * 
from nobel
where winner like 'Peter GrÜ%'

-- 12
select * 
from nobel
where winner like 'eugene o%neill'

-- 13
select winner, yr, subject
from nobel
where 
winner like 'sir %'
order by yr desc, winner asc

-- 14 ordering somehow but concrete elements listing last
SELECT winner, subject 
FROM nobel
 WHERE yr=1984
 ORDER BY 
case when subject IN ('physics','chemistry') then 1 else 0 end, subject, winner
