-- https://www.codewars.com/kata/58167fa1f544130dcf000317/train/sql

select min(score), max(score), 
percentile_cont(0.5) WITHIN GROUP (ORDER BY score) AS median
from result

-- other way
SELECT
MIN(score),
MAX(score),
ROUND(PERCENTILE_CONT(0.50) WITHIN GROUP (ORDER BY score)::numeric, 2)::float as median

FROM result

-- other way

SELECT MAX(score),
MIN(score),
PERCENTILE_CONT(0.5) WITHIN GROUP(ORDER BY score)  AS median
FROM result