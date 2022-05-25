-- 1
SELECT 
matchid, player FROM goal 
  WHERE teamid = 'GER'

-- 2
SELECT id,stadium,team1,team2
  FROM game
where id = 1012

-- 3
SELECT player, teamid, stadium, mdate
  FROM game JOIN goal ON (id=matchid)
where teamid = 'GER'

-- 4
select team1, team2, player
from goal
join game
on (matchid = id)
where player like 'Mario%'

-- 5
SELECT player, teamid, coach, gtime
FROM goal 
join eteam
on (teamid = id)
WHERE gtime<=10

-- 6
select mdate, teamname
from game 
join eteam
on (team1 = eteam.id)
where coach = 'Fernando Santos'

-- 7
select player
from goal
join
game
on (matchid=id)
where stadium = 'National Stadium, Warsaw'

-- 8
SELECT DISTINCT player 
FROM game 
JOIN goal 
ON matchid = id 
WHERE (teamid!='GER' AND (team1='GER' OR team2='GER'))

-- Show teamname and the total number of goals scored.
SELECT teamname, count(teamname)
from eteam
join goal
on (id= teamid)
group by teamname

-- Show the stadium and the number of goals scored in each stadium.
select stadium, count(*)
from game
join goal
on (id = matchid)
group by stadium

-- For every match involving 'POL', show the matchid, date and the number of goals scored.
select matchid, mdate, count(*)
from goal 
join game
on matchid = id
where 'POL' IN (team1, team2)
group by matchid, mdate

-- For every match where 'GER' scored, show matchid, match date and the number of goals scored by 'GER'
select matchid, mdate, count(*)
from goal
join game
on (matchid = id)
where teamid = 'GER'
group by matchid, mdate



