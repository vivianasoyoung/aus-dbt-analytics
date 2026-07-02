
    
    

with all_values as (

    select
        transaction_type as value_field,
        count(*) as n_records

    from "aus_pipeline"."analytics_dev_staging"."stg_transactions"
    group by transaction_type

)

select *
from all_values
where value_field not in (
    'DEBIT','CREDIT'
)


