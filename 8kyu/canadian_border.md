On the Canadian Border (SQL for Beginners #2)

        -- never is going to be a picture
        -- <name> table schema is literally, the name of the table

        SELECT 
        name, country 
        FROM 
        travelers 

        WHERE 
        NOT country = 'USA' AND NOT country = 'Canada' AND NOT country = 'Mexico';

