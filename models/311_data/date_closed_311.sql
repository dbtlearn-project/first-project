select
    date(closed_date) as date_closed,
    extract(year from closed_date) as year,
    extract(month from closed_date) as month,
    extract(day from closed_date) as day

 from 
    {{ source('data_lake', '311_data_raw') }}