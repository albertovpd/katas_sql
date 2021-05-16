-- https://www.codewars.com/kata/sql-basics-simple-pivoting-data/

SELECT * 
FROM crosstab( 'select student, subject, evaluation_result from evaluations order by 1,2') 
     AS final_result(Student TEXT, Geography NUMERIC,History NUMERIC,Language NUMERIC,Maths NUMERIC,Music NUMERIC);


SELECT *
FROM crosstab(
  $$ 
    SELECT p.name, d.detail, COUNT(*)
    FROM products AS p
    INNER JOIN details AS d ON d.product_id = p.id
    GROUP BY p.name, d.detail
    ORDER BY p.name, CASE d.detail WHEN 'good' THEN 1 WHEN 'ok' THEN 2 WHEN 'bad' THEN 3 END
  $$
) AS (name text, good bigint, ok bigint, bad bigint);