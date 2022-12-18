select
    date(inspection_date) as inspection_date,
    extract(year from inspection_date) as year,
    extract(month from inspection_date) as month,
    extract(day from inspection_date) as day
    

from
    {{ ref('stg_ny_food_inspection') }}
group by 
    1, 2, 3, 4