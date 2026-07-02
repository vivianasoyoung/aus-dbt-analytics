
    
    

select
    transaction_month as unique_field,
    count(*) as n_records

from "aus_pipeline"."analytics_dev_marts"."mart_monthly_summary"
where transaction_month is not null
group by transaction_month
having count(*) > 1


