select
    agency,
    agency as agency_key,
    agency_name,
    resolution_description

 from 
    {{ source('data_lake', '311_data_raw') }}