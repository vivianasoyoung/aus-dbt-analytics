





with validation_errors as (

    select
        transaction_month, merchant_category
    from "aus_pipeline"."analytics_dev_marts"."mart_category_trends"
    group by transaction_month, merchant_category
    having count(*) > 1

)

select *
from validation_errors


