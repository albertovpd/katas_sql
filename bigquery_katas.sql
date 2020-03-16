-- Select the percentaje of kids called Chad in 2018, in comparison with the named in 1972
WITH chads_cte AS (
  SELECT year, SUM(number) chads
  FROM `bigquery-public-data.usa_names.usa_1910_current` 
  WHERE name='Chad'
  GROUP BY 1
)

SELECT *, ROUND(100*chads/(SELECT chads FROM chads_cte WHERE year=1972),2) percent_compated_to_1972
FROM chads_cte
WHERE year>=1972
ORDER BY 1