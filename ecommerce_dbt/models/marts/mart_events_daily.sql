select
    event_date,

    count(*) as total_purchases,
    count(distinct user_pseudo_id) as paying_users,

    sum(revenue) as total_revenue,
    avg(revenue) as avg_order_value

from {{ ref('stg_events') }}

where event_name = 'purchase'

group by event_date