--# SQL Basics: Top 10 customers by total payments amount

        -- Replace with your query (in pure SQL)

        select 
        customer.customer_id, customer.email,

        count(payment.amount) as payments_count,
        cast(sum(payment.amount) as float ) as total_amount 

        from 
        customer join payment 

        on customer.customer_id= payment.customer_id 

        group by(customer.customer_id) 
        order by(sum(payment.amount)) desc
        limit 10