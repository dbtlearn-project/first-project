select

    borough,
    incident_zip as zipcode,
    street_name as street,
    incident_address as address,
    borough as borough_key

from   
    {{ ref('stg_311_raw_data') }}
group by
    1,2,3,4,5