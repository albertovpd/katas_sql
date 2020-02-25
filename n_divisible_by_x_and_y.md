Is n divisible by x and y?


        -- you will be given a table 'kata' with columns 'n', 'x', and 'y'. Return the 'id' and your result in a column named 'res'.
        -- case is like a new column you'll display

        select 
        id,
        case
            when (n % x) = 0 and (n % y) =0 then true
            else false
        end as res

        from kata;
