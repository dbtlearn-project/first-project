select
    camis as camis_restaurant_id,
    dba as dba_name,
    cuisine_description,
    phone
from
    {{ ref('stg_ny_food_inspection') }}
group by 
    1,2,3,4