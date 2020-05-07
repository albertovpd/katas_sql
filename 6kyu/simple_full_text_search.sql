-- https://www.codewars.com/kata/581676828906324b8b00059e/solutions/sql

        SELECT *
        -- @@ is prefixed to global variables
        -- to_tsvector(text) reads the string and does some normalization (text search vector)
        -- "to_tsquery" compiles the query you gave it into the structure used for searching. 
        -- But then, because you are selecting it rather than using it with a ts query operator, 
        -- it converts it back to text again so it can display it
        FROM product
        WHERE TO_TSVECTOR(name) @@ TO_TSQUERY('Awesome');