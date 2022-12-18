select
    date(created_date) as date_created,
    extract(year from created_date) as year,
    extract(month from created_date) as month,
    extract(day from created_date) as day

 from 
    {{ source('data_lake', '311_data_raw') }}