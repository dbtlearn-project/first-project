{{
    config(
        materialized='table'
    )
}}

select
    o.id as order_id,
    c.id as user_id,
    c.full_name,
    o.order_date,
    o.status as order_status
from 
    {{ ref('stg_orders') }}
        as o
join
    {{ ref('stg_customers') }}
        as c
        on c.id = o.user_id