select
    boro as boro_key,
    boro,
    zipcode as Zip_code,
    street,
    building

from
     {{ ref('stg_ny_food_inspection') }}
group by 
    1,2,3,4,5