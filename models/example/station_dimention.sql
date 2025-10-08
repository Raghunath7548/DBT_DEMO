WITH BIKE AS (

    select 
    start_statio_id as station_id,
    start_station_name,
    start_lat,
    start_lng
    from {{ ref('stg_bike') }}
    where RIDE_ID != 'ride_id'

)

select * from Bike