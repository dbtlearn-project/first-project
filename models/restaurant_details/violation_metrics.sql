select
    score,
    grade,
    grade_date
   
from
    {{ ref('stg_ny_food_inspection') }}
group by
    1,2,3