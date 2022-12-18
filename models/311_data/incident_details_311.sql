 select
    unique_key,
    complaint_type,
    location_type,
    descriptor,
    status,
    open_data_channel_type as channel_type

 
 from 
    {{ source('data_lake', '311_data_raw') }}