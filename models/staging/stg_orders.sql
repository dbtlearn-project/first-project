with orders_view as (
    select
        id,
        user_id,
        status,
        order_date,
        _etl_loaded_at

    from
        {{ source('jaffle_shop', 'orders') }}
)

select
    *
from
    orders_view
