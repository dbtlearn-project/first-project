select
    violation_code,
    violation_description,
    critical_flag
   
from
    {{ ref('stg_ny_food_inspection') }}
group by
    1,2,3