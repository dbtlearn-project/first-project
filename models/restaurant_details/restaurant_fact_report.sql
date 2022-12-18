select
        rd.camis_restaurant_id,
        id.month,
        vd.violation_code,
        max(vm.score) as score,
        max(boro) as boro_key,
        count(camis_restaurant_id) as number_of_inspection

from
     {{ ref('stg_ny_food_inspection') }}
        as b
join
     {{ ref('restaurant_details') }}
        as rd
        on rd.camis_restaurant_id = b.camis
join
     {{ ref('inspection_details') }}
        as id
        on id.inspection_date = b.inspection_date
-- join
--      {{ ref('location') }}
--         as l 
--         on l.boro_key = b.boro
join
     {{ ref('violationn_descriptors') }}
        as vd
        on vd.violation_code = b.violation_code
join
     {{ ref('violation_metrics') }}
        as vm
        on vm.score = b.score


group by 1,2, 3
    