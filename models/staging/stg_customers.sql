with customers_view as (
    select
        id,
        first_name,
        last_name,
        concat(first_name,' ', last_name) as full_name
    from
        {{ source('jaffle_shop', 'customers') }}
)

select
    *
from
    customers_view
