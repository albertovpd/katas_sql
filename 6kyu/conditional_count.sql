--https://www.codewars.com/kata/5816a3ecf54413a113000074

        SELECT
        EXTRACT(MONTH FROM payment_date) AS month,
        -- all counts are defined by payment_id
        COUNT(payment_id) AS total_count,
        SUM(amount) as total_amount,
        -- to create new columns with the name of possible rows: --(case when-- end)
        -- COUNT returns the complete record count
        -- SUM returns the number of times the condition is true, because true is 1 and false is 0
        COUNT(CASE WHEN staff_id = 1 THEN payment_id END) AS mike_count,
        SUM(CASE WHEN staff_id = 1 THEN amount END) AS mike_amount, 
        COUNT(CASE WHEN staff_id = 2 THEN payment_id END) AS jon_count,
        SUM(CASE WHEN staff_id = 2 THEN amount END) AS jon_amount

        FROM payment

        GROUP BY month
        ORDER BY month ASC 

        