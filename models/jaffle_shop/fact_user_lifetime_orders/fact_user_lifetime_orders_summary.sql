{{
    config(
        materialized='table'
    )
}}

select
    c.id as user_id,
    c.full_name,
    o.order_date,
    count(distinct o.id) as no_of_orders
from 
    {{ ref('stg_orders') }}
        as o
join
    {{ ref('stg_customers') }}
        as c
        on c.id = o.user_id
group by
    1, 2, 3