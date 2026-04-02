select
    event_date,

    count(distinct user_pseudo_id) as total_users,

    count(distinct case 
        when event_name = 'purchase' then user_pseudo_id 
    end) as paying_users,

    safe_divide(
        count(distinct case 
            when event_name = 'purchase' then user_pseudo_id 
        end),
        count(distinct user_pseudo_id)
    ) as conversion_rate

from {{ ref('stg_events') }}

group by event_date