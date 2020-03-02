-- https://www.codewars.com/kata/5ad90fb688a0b74111000055/train/sql

It's been kind of weird to capitalize only the first element of a str

        Select 
        CONCAT(
        UPPER(SUBSTRING(firstname,1,1)),LOWER(SUBSTRING(firstname,2))
        ,' ',
        UPPER(SUBSTRING(lastname,1,1)),LOWER(SUBSTRING(lastname,2))
        ) 
        AS Shortlist
        FROM Elves
        where firstname like '%tegil%' or lastname like '%astar%'


Best practices

        --but on the land of Lórien no shadow lay--
        select
        initcap(firstname || ' ' || lastname) as Shortlist
        from Elves
        where firstname like '%tegil%' or lastname like '%astar%'