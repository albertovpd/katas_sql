-- https://www.codewars.com/kata/5817b124e7f4576fd00020a2/train/sql

SELECT film.title
FROM film
JOIN film_actor as sc ON film.film_id = sc.film_id
JOIN film_actor as sn ON film.film_id = sn.film_id
-- it looked intuitive to use just 1 join and 2 where clauses
WHERE
sc.actor_id=105
AND
sn.actor_id = 122