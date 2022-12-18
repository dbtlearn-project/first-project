select
    i.unique_key,
    l.borough_key,
    dc.date_created,
    dcl.date_closed,
    a.agency_key,
    i.complaint_type,
    i.status,
    DATE_DIFF(date_closed,  date_created, DAY) as time_to_close_case


from
    {{ ref('stg_311_raw_data') }}
        as r
join
    {{ ref('location_311') }}
        as l 
        on borough_key = r.borough
join
    {{ ref('incident_details_311') }}
        as i
        on i.unique_key = r.unique_key
join
    {{ ref('date_created_311') }}
        as dc 
        on dc.date_created = date(created_date)
join
    {{ ref('date_closed_311') }}
        as dcl 
        on dcl.date_closed = date(closed_date)
join
    {{ ref('agency_311') }}
        as a 
        on a.agency_key = r.agency