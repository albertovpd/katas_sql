-- https://www.codewars.com/kata/5982020284a83baf2f00001c/train/sql

        select name,
            count(case when b.detail = 'good' then b.detail end) as good,
            count(case when b.detail = 'ok' then b.detail end) as ok,
            count(case when b.detail = 'bad' then b.detail end) as bad
        from products a
        inner join details b on a.id = b.product_id
        group by a.name
        order by a.name
