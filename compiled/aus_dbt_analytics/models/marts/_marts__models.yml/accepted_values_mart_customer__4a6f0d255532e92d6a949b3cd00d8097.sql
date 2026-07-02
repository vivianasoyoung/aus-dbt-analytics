
    
    

with all_values as (

    select
        customer_segment as value_field,
        count(*) as n_records

    from "aus_pipeline"."analytics_dev_marts"."mart_customer_segments"
    group by customer_segment

)

select *
from all_values
where value_field not in (
    'Premium','High Value','Regular','Low Activity'
)


