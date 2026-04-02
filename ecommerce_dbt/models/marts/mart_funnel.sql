select
    event_date,

    countif(event_name = 'page_view') as page_views,
    countif(event_name = 'add_to_cart') as add_to_cart,
    countif(event_name = 'purchase') as purchases

from {{ ref('stg_events') }}

group by event_date