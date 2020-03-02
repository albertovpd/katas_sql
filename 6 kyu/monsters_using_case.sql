-- SQL Basics - Monsters using CASE


        SELECT 
        top_half.id AS id,
        top_half.heads AS heads, 
        bottom_half.legs AS legs, 
        top_half.arms AS arms, 
        bottom_half.tails AS tails,
        CASE 
        
        WHEN top_half.heads > top_half.arms OR bottom_half.tails > bottom_half.legs THEN  'BEAST'
            ELSE 'WEIRDO'
        
        
        END AS species
        
        
        
        FROM top_half
        
        LEFT JOIN 
            bottom_half ON top_half.id=bottom_half.id
            
        ORDER BY species;

