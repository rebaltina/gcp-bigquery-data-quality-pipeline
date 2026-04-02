select *
from (
    select
        safe.parse_date('%Y%m%d', event_date) as event_date,
        timestamp_micros(event_timestamp) as event_timestamp,
        event_name,
        user_pseudo_id,

        concat(user_pseudo_id, '-', event_timestamp) as event_id,

        (
            select value.int_value
            from unnest(event_params)
            where key = 'value'
        ) as revenue

    from {{ source('raw', 'events_jan01_07') }}
)

where event_date is not null
AND event_date >= DATE('2021-01-01')