-- https://www.codewars.com/kata/sql-basics-simple-null-handling/

SELECT
  id,
  -- he COALESCE function in SQL returns the first non-NULL expression among its arguments
  -- The NULLIF() function returns NULL if two expressions are equal, otherwise it returns the first expression
  COALESCE(NULLIF(name, ''), '[product name not found]') AS name,
  price,
  COALESCE(NULLIF(card_name, ''), '[card name not found]') AS card_name,
  card_number,
  transaction_date
FROM eusales
WHERE price > 50 and price IS NOT NULL 